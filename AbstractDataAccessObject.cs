#region	Copyright
/*=======================================================================
* Modification History:
* Date				Programmer			Description
* 202004			PCHEN	Add generic Deserialized<T>() 
*	so each derived class no need to have its own Deserialzier()
* 202011			PCHEN	
*	Add ExecuteNonQuery Overload wrapper to all insert/update
* 	Add ExecuteXmlReader Overload wrapper to all Get/Find
*=======================================================================
* Copyright (C) 2003 - 2004 AECsoft USA, Inc.
* All rights reserved.
*=======================================================================*/
#endregion Copyright

#region References
using System;
using System.Collections;
using System.Data;
using System.Reflection;

using SCA.VAS.Common.ValueObjects;
using SCA.VAS.Common;
using SCA.VAS.DataAccess.Transactions;
using System.Xml;
using System.Data.SqlClient;
using SCA.VAS.Common.Utilities;
using System.Linq;
using Microsoft.ApplicationBlocks.Data;
using System.Collections.Generic;
using System.Collections.Generic;

#endregion References

namespace SCA.VAS.DataAccess
{
	#region Header
	/// <summary>
	/// Default implementation of IManager.
	/// </summary>
	#endregion

	public abstract class AbstractDataAccessObject : IDataAccessObject
	{
		#region Constructors
	
		public  AbstractDataAccessObject( )
		{
		}
		#endregion
		
		#region IDataAccessObject


		public virtual bool Create( IDataSource dataSource, IValueObject newObject )
		{
			throw new NotImplementedException();
		}

		public virtual bool Update( IDataSource dataSource, IValueObject existingObject )
		{
			throw new NotImplementedException();
		}

		public virtual bool Delete( IDataSource dataSource, int id )
		{
			throw new NotImplementedException();
		} 

		/// <summary>
		/// Get a value object from database by its ID.
		/// </summary>
		public virtual IValueObject Get( IDataSource dataSource, int id )
		{
			throw new NotImplementedException();
		} 


		/// <summary>
		/// Gets all the value objects.
		/// </summary>
		/// <returns>a valid non-empty collection or null</returns>
		public virtual ICollection GetAll( IDataSource dataSource )
		{
			throw new NotImplementedException();
		} 

		/// <summary>
		/// Generic search function to get a list of value objects by certain criteria.
		/// </summary>
		/// <param name="finderType">a defined finder type</param>
		/// <param name="criteria">the list of arguments as criteria to the finder method</param>
		/// <returns>a valid non-empty collection or null</returns>
		public virtual ICollection FindByCriteria( IDataSource dataSource, string finderType, object[ ] criteria )
		{
			throw new NotImplementedException();
		} 

		/// <summary>
		/// This is a generic function to invoke any function of a DAO.
		/// Note: IDataSource must be the first parameter of  parameters array.
		/// </summary>
		/// <param name="methodName"></param>
		/// <param name="parameters"></param>
		/// <returns></returns>
		public virtual object InvokeByMethodName( string methodName, object[ ] parameters )
		{
			Type type = this.GetType( );
			return type.InvokeMember( methodName, BindingFlags.DeclaredOnly | 
				BindingFlags.Public |  BindingFlags.Instance | BindingFlags.InvokeMethod, 
				null, this, parameters );
		}
 		#endregion 

		#region Protected Methods
		/// <summary>
		/// Retrieve the db transaction from the CallContext.
		/// The DAO will decide to make a new connection or use the tranaction if there is one.
		/// </summary>
		/// <returns></returns>
		protected IDbTransaction GetContextTransaction( IDataSource dataSource )
		{
			IDbTransaction transaction = null;

			ITransactionHandler transactionHandler = TransactionContextFactory.GetHandler( );
			if(transactionHandler != null)
			{
				transaction = transactionHandler.GetTransaction( dataSource.Name, dataSource.CreateConnection( )  );	
			}
			return transaction;
		}

		/// <summary>
		/// Wrapper to SqlCommand.ExecuteXmlReader() call; 
		/// (20200414 PCHEN Introduced; An effort to obsolete ref to SqlHelper.ExecuteXmlReader from Microsoft.ApplicationBlocks.Data); 
		/// </summary>
		/// <param name="dbSession">Current db context</param>
		/// <param name="commandText"></param>
		/// <param name="parameters"></param>
		/// <returns></returns>
		protected static XmlReader ExecuteXmlReader(DbSession dbSession, string commandText, IEnumerable<SqlParameter> parameters)
		{
			XmlReader reader;
			using (SqlCommand cmd = new SqlCommand())
			{
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.CommandText = commandText;

				foreach (SqlParameter p in parameters)
				{
					cmd.Parameters.Add(p);
				}

				if (dbSession.Transaction != null)
				{
					cmd.Transaction = dbSession.Transaction;
					cmd.Connection = dbSession.Transaction.Connection;
				}
				else 
					cmd.Connection = dbSession.Connection;
				if (!cmd.Connection.State.Equals(ConnectionState.Open)) cmd.Connection.Open();

				reader = cmd.ExecuteXmlReader();
			}
			return reader;
		}
		/// <summary>
		/// Wrapper to static 'ExecuteXmlReader()' method. 
		/// Applicable to Get/Find where return is IValueObject or ValueObjectCollection<IValueObject> 
		/// </summary>
		/// <param name="dataSource"></param>
		/// <param name="XmlReaderFunc">XmlReader Wrapper Function</param>
		/// <param name="args">Dynamic Object contains the values to be inserted/updated</param>
		/// <returns>IValueObject / ValueObjectCollection<IValueObject></returns>
		protected T ExecuteXmlReader<T>(IDataSource dataSource, Func<DbSession, dynamic, XmlReader> XmlReaderFunc, dynamic args) 
		{
			/// ** PCHEN Created 11/2020, intended for All ExecuteXmlReader type of DB call **
			var transaction = (SqlTransaction)GetContextTransaction(dataSource);
			DbSession dbSession = DbSessionFactory.Instance.Create();
			if (transaction == null) // Not in a transaction.
			{
				using (var connection = (SqlConnection)dataSource.CreateConnection())
				{
					dbSession.Connection = connection;
					return Deserialize<T>(XmlReaderFunc(dbSession, args));
				}
			}
			else
			{
				dbSession.Transaction = transaction;
				return Deserialize<T>(XmlReaderFunc(dbSession, args));
			}
		}


		/// <summary>
		/// Wrapper to SqlCommand.ExecuteNonQuery() call;
		/// (202004 PCHEN Introduced; An effort to obsolete ref to SqlHelper.ExecuteNonQuery() from Microsoft.ApplicationBlocks.Data); 
		/// </summary>
		/// <param name="dbSession"></param>
		/// <param name="commandText"></param>
		/// <param name="parameters"></param>
		/// <param name="retval"></param>
		/// <returns>@@RowCount; OUT: ReturnValue from SP execution</returns>
		protected static int ExecuteNonQuery(DbSession dbSession, string commandText, IEnumerable<SqlParameter> parameters, out int retval)
		{
			//dev note 202012 Removed restriction of SqlParameter[0] to be ParameterDirection.ReturnValue
			string ReturnParam = string.Empty;
			using (SqlCommand cmd = new SqlCommand())
			{
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.CommandText = commandText;

				foreach (SqlParameter p in parameters)
				{
					if (p.Direction.Equals(ParameterDirection.ReturnValue)) ReturnParam = p.ParameterName;
					cmd.Parameters.Add(p);
				}

				if (dbSession.Transaction != null)
				{
					cmd.Transaction = dbSession.Transaction;
					cmd.Connection = dbSession.Transaction.Connection;
				}
				else
					cmd.Connection = dbSession.Connection;
				if (!cmd.Connection.State.Equals(ConnectionState.Open)) cmd.Connection.Open();
				int rows = cmd.ExecuteNonQuery();
				retval = ReturnParam.Length>0 ? (int)cmd.Parameters[ReturnParam].Value: 0;
				return rows;
			} ;
		}

		/// <summary>
		///		Wrapper to static 'ExecuteNonQuery()' method; 
		///		Applicable to generic Insert/Update/Delete where interger is the output 
		/// </summary>
		/// <param name="dataSource">datasource</param>
		/// <param name="NonQueryFunc">NoneQuery Wrapper Function</param>
		/// <param name="args">Dynamic Object contains the values to be inserted/updated</param>
		/// <returns>ParameterDirection.ReturnValue OR @@RowCount, defined by NonQueryFunc()</returns>
		protected int ExecuteNonQuery(IDataSource dataSource, Func<DbSession, dynamic, int> NonQueryFunc, dynamic args)
		{
			/// ** PCHEN Created 11/2020, intended for All ExecuteNoQuery type of DB call **
			var transaction = (SqlTransaction)GetContextTransaction(dataSource);
			DbSession dbSession = DbSessionFactory.Instance.Create();
			int i = -99;
			if (transaction == null) // Not in a transaction.
			{
				using (var connection = (SqlConnection)dataSource.CreateConnection())
				{
					dbSession.Connection = connection;
					i = NonQueryFunc(dbSession, args);
				}
			}
			else
			{
				dbSession.Transaction = transaction;
				i = NonQueryFunc(dbSession, args);
			}
			return i;
		}
		protected static T Deserialize<T>(XmlReader reader)
		{
			/* ** 202004 PCHEN introduced using generic ** */
			return (T)XmlUtility.Deserialize(reader, typeof(T));
		}

		/// <summary>
		///  Created By: Sanjeev Paul
		/// Trying to remove repeated code between transaction and connection
		/// We need connection only when we are actually executing stored procedure/Retrieving data from database.
		/// Transaction or Connection object is created based on IDatasoure sources.
		/// </summary>
		/// <typeparam name="T">Type of IValueObject/IValueCollection to be returned</typeparam>
		/// <param name="dSource">IDatasource (any Dao Object Sources)</param>
		/// <param name="SPName">StoredProcedure Name</param>
		/// <param name="parameters">SqlParameter object</param>
		/// <param name="IsDataset"></param>
		/// <param name="paging"></param>
		/// <param name="addDebug"></param>
		/// <returns></returns>
		protected object Execute<T>(IDataSource dSource, string SPName, List<SqlParameter> parameters, bool IsDataset = false, DataPaging paging = null, bool addDebug = false)
		{
			SqlTransaction transaction = (SqlTransaction)GetContextTransaction(dSource);

			if (transaction == null)
			{
				using (SqlConnection connection = (SqlConnection)dSource.CreateConnection())
				{
					return ExecuteStoredProc<T>(connection, SPName, parameters, IsDataset, paging, addDebug);
				}
			}
			else
			{
				return ExecuteStoredProc<T>(transaction, SPName, parameters, IsDataset, paging, addDebug);
			}
		}
		/// <summary>
		/// Created By: Sanjeev Paul
		/// Exection of Stored Procedure        
		/// 
		/// </summary>
		protected static object ExecuteStoredProc<T>(object connection, string SPName, List<SqlParameter> parameters, bool IsDataset = false, DataPaging paging = null, bool addDebug = false)
		{
			//Making sure parameters are never null in further operation.
			parameters = parameters ?? new List<SqlParameter>();

			//Adding paging stuff
			if (paging != null)
			{
				//Add paging only when there is a Sort Field associated as well as returning page number set to either zero or gretaer
				if (!paging.SortField.Empty() && paging.PageNo >= 0)
				{
					parameters.Add(new SqlParameter("@PageSize", SqlDbType.Int) { Value = paging.PageSize });
					parameters.Add(new SqlParameter("@PageNumber", SqlDbType.Int) { Value = paging.PageNo });
					parameters.Add(new SqlParameter("@SortField", SqlDbType.VarChar, 250) { Value = paging.SortField });
					parameters.Add(new SqlParameter("@SortSequence", SqlDbType.VarChar, 4) { Value = paging.SortSequence });
				}

				if (paging.extraParameterXml != null)
					parameters.Add(new SqlParameter("@ExtraXml", SqlDbType.NText) { Value = paging.extraParameterXml });
			}

			//Adding debug key if required
			if (addDebug) parameters.Add(new SqlParameter("@Debug", SqlDbType.Bit) { Value = 0 } );

			//Adding result Parameter
			parameters.Add(new SqlParameter("@ReturnValue", SqlDbType.Int) { Direction = ParameterDirection.ReturnValue });

			//Create Array Object to pass on the parameters as Paramter as well as return the REF reference to calling method.
			var _params = parameters.ToList().ToArray();

			object result;
			if (connection is SqlTransaction)
			{
				if (!IsDataset)
					result = SqlHelper.ExecuteNonQuery(connection as SqlTransaction, CommandType.StoredProcedure, SPName, _params);
				else
					result = Deserialize<T>(SqlHelper.ExecuteXmlReader(connection as SqlTransaction, CommandType.StoredProcedure, SPName, _params));
			}
			else
			{
				if (!IsDataset)
					result = SqlHelper.ExecuteNonQuery(connection as SqlConnection, CommandType.StoredProcedure, SPName, _params);
				else
					result = Deserialize<T>(SqlHelper.ExecuteXmlReader(connection as SqlConnection, CommandType.StoredProcedure, SPName, _params));
			}
			return IsDataset ? result : parameters.Find(p => p.ParameterName == "@ReturnValue").Value;
		}
		#endregion
	}


}