#region Copyright 
/*=======================================================================
* Modification History: 
* Date      Programmer  Description 
* 10/2020   PCHEN       Introduced
*=======================================================================*/
#endregion Copyright 

#region References 

using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using SCA.VAS.Common.Utilities;
using SCA.VAS.Common.ValueObjects;
using SCA.VAS.ValueObjects.Rfp;
using log4net;
using System.Collections.Generic;

#endregion References

namespace SCA.VAS.DataAccess.Rfp
{
    /// <summary>
    ///     DataAccessObject class for RfpRequest.
    /// </summary>
    public class RfpRequestDao : AbstractDataAccessObject
    {
        #region Constants 

        // *************************************************************************
        // constants 
        // *************************************************************************
        public const string FIND_BY_BATCHJOB = "FindRfpRequestByBatchJob";

        #endregion Constants
        #region Private Members 

        // *************************************************************************
        // Private Members 
        // *************************************************************************
        private static readonly ILog _logger;

        #endregion Private Members

        #region Constructors 

        // *************************************************************************
        // Constructors 
        // *************************************************************************
        /// <summary>
        ///     class constructor
        ///     initializes logging
        /// </summary>
        static RfpRequestDao()
        {
            _logger = LoggingUtility.GetLogger(typeof(RfpRequestDao).FullName);
        }
        #endregion

        #region Methods

        /// <summary>
        ///     Get a new Plan object from the database.
        /// </summary>
        /// <param name="Id">Plan Id</param>
        /// <returns></returns>
        public override IValueObject Get(IDataSource dataSource, int id)
        {
            string methodName = "Get";
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteXmlReader<RfpRequest>(dataSource, _GetRfpRquestXml, id);
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return null;
            }
        }

        public IValueObject GetRfpMultiplierRequest(IDataSource dataSource, int id)
        {
            string methodName = "GetRfpMultiplierRequest";
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteXmlReader<RfpRequestMultiplier>(dataSource, _GetRfpMultiplierRquestXml, id);
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return null;
            }
        }

        public override ICollection FindByCriteria(IDataSource dataSource, string finderType, object[] criteria)
        {
            String methodName = "RfpRequestDao.FindByCriteria() - " + finderType + " - " + dataSource.Name;
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                switch (finderType)
                {
                    case FIND_BY_BATCHJOB:
                        {
                            return ExecuteXmlReader<ValueObjectCollection<RfpRequest>>(dataSource, _FindRfpRequestByBatchJob, criteria);
                        }
                    default:
                        return null;
                }
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return null;
            }
        }

        public override bool Update(IDataSource dataSource, IValueObject existingObject)
        {
            String methodName = "RfpRequestDao.Update";
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteNonQuery(dataSource, _UpdateRfpRequest, existingObject) > 0;
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return false;
            }
        }

        public int UpsertRfpMultiplierRequest(IDataSource dataSource, IValueObject existingObject)
        {
            String methodName = "RfpRequestDao.UpsertRfpMultiplierRequest";
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteNonQuery(dataSource, _UpsertRfpMultiplierRequest, existingObject);

            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return -999;
            }
        }
        /// <summary>
        /// Remove the object from the database.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public override bool Delete(IDataSource dataSource, int id)
        {
            String methodName = "RfpRequest.Delete";
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteNonQuery(dataSource, _Delete, id) > 0;
            }
            catch (System.Exception e)
            {
                _logger.Error(methodName, e);
                return false;
            }
        }
        #endregion

        #region Private SP Wrapper functions
        /// <summary>
        ///     Wrapper function for SP 'GetRfpRequestXML'.
        /// </summary>
        private static XmlReader _GetRfpRquestXml(
            DbSession dbSession, dynamic id)
        {
            var parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;
            parameters[1] = new SqlParameter("@id", SqlDbType.Int);
            parameters[1].Value = id;
            return(XmlReader)ExecuteXmlReader(dbSession, "GetRfpRequestXML", parameters);
        }
        /// <summary>
        ///     Wrapper function for SP 'GetRfpMultiplierRquestXml'.
        /// </summary>
        private static XmlReader _GetRfpMultiplierRquestXml(
            DbSession dbSession,
            dynamic id)
        {
            var parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;
            parameters[1] = new SqlParameter("@id", SqlDbType.Int);
            parameters[1].Value = id;
            return (XmlReader)ExecuteXmlReader(dbSession, "GetRfpMultiplierRequestXml", parameters);
        }
        /// <summary>
        ///     wrapper function for sp 'UpdateRfpRequest'.
        /// </summary>
        private static int _UpdateRfpRequest(
            DbSession dbSession, dynamic v)
        {
            RfpRequest r = v as RfpRequest;
            var L = new List<SqlParameter>();
            SqlParameter p;
            p = new SqlParameter("@ReturnValue", SqlDbType.Int);
            p.Direction = ParameterDirection.ReturnValue;
            L.Add(p);
            p = new SqlParameter("@id", SqlDbType.Int);
            p.Value = r.Id;
            L.Add(p);
            p = new SqlParameter("@ReqType", SqlDbType.VarChar, 100);
            p.Value = r.ReqType;
            L.Add(p);
            p = new SqlParameter("@ReqSubType", SqlDbType.VarChar, 100);
            p.Value = r.ReqSubType;
            L.Add(p);
            p = new SqlParameter("@ReqDate", SqlDbType.DateTime);
            p.Value = r.ReqDate;
            L.Add(p);
            p = new SqlParameter("@FromEmpId", SqlDbType.VarChar, 10);
            p.Value = r.FromEmpId;
            L.Add(p);
            p = new SqlParameter("@FromTitle", SqlDbType.VarChar, 100);
            p.Value = r.FromTitle;
            L.Add(p);
            p = new SqlParameter("@ThroughEmpId", SqlDbType.VarChar, 10);
            p.Value = r.ThroughEmpId;
            L.Add(p);
            p = new SqlParameter("@ThroughTitle", SqlDbType.VarChar, 100);
            p.Value = r.ThroughTitle;
            L.Add(p);
            p = new SqlParameter("@ThroughDecision", SqlDbType.Char, 1);
            p.Value = r.ThroughDecision;
            L.Add(p);
            p = new SqlParameter("@ThroughDecisionDate", SqlDbType.DateTime);
            p.Value = r.ThroughDecisionDate;
            L.Add(p);
            p = new SqlParameter("@ThroughComment", SqlDbType.VarChar, -1);
            p.Value = r.ThroughComment;
            L.Add(p);
            p = new SqlParameter("@ToEmpId", SqlDbType.VarChar, 10);
            p.Value = r.ToEmpId;
            L.Add(p);
            p = new SqlParameter("@ToTitle", SqlDbType.VarChar, 100);
            p.Value = r.ToTitle;
            L.Add(p);
            p = new SqlParameter("@ToDecision", SqlDbType.Char, 1);
            p.Value = r.ToDecision;
            L.Add(p);
            p = new SqlParameter("@ToDecisionDate", SqlDbType.DateTime);
            p.Value = r.ToDecisionDate;
            L.Add(p);
            p = new SqlParameter("@ToComment", SqlDbType.VarChar, -1);
            p.Value = r.ToComment;
            L.Add(p);
            p = new SqlParameter("@StatusId", SqlDbType.Int);
            p.Value = r.StatusId;
            L.Add(p);
            p = new SqlParameter("@Changeuser", SqlDbType.VarChar, 10);
            p.Value = r.ChangeUser;
            L.Add(p);
            int retval, rows;
            rows= ExecuteNonQuery(dbSession, "UpdateRfpRequest", L, out retval);
            return rows;
        }

        /// <summary>
        ///     Wrapper function for sp 'UpsertRfpMultiplierRequest'.
        /// </summary>
        private static int _UpsertRfpMultiplierRequest(
            DbSession dbSession, dynamic v)
        {
            RfpRequestMultiplier r = v as RfpRequestMultiplier;
            var L = new List<SqlParameter>();
            SqlParameter p;
            p = new SqlParameter("@ReturnValue", SqlDbType.Int); 
            p.Direction = ParameterDirection.ReturnValue; L.Add(p);
            p = new SqlParameter("@Id", SqlDbType.Int); 
            p.Value = r.Id; L.Add(p);
            p = new SqlParameter("@SolicitNo", SqlDbType.VarChar, 20); 
            p.Value = r.SolicitNo; L.Add(p);
            p = new SqlParameter("@YearRequested", SqlDbType.VarChar, 10); 
            p.Value = r.YearRequested; L.Add(p);
            p = new SqlParameter("@TaxId", SqlDbType.VarChar, 15); 
            p.Value = r.TaxId; L.Add(p);
            p = new SqlParameter("@IsJV", SqlDbType.Bit); 
            p.Value = r.IsJV ?1:0;  L.Add(p);
            p = new SqlParameter("@JV1TaxId", SqlDbType.VarChar, 15); 
            p.Value = r.JV1TaxId; L.Add(p);
            p = new SqlParameter("@JV2TaxId", SqlDbType.VarChar, 15); 
            p.Value = r.JV2TaxId; L.Add(p);

            p = new SqlParameter("@HasHome", SqlDbType.Bit);  
            p.Value = r.HasHome ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasHomeEmg", SqlDbType.Bit); 
            p.Value = r.HasHomeEmg ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasField", SqlDbType.Bit);  
            p.Value = r.HasField ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasFieldEmg", SqlDbType.Bit);
            p.Value = r.HasFieldEmg ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasStaffSel", SqlDbType.Bit);
            p.Value = r.HasStaffSel ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasStaffPre", SqlDbType.Bit);
            p.Value = r.HasStaffPre ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasQuasiSel", SqlDbType.Bit);
            p.Value = r.HasQuasiSel ? 1 : 0; L.Add(p);
            p = new SqlParameter("@HasQuasiPre", SqlDbType.Bit);
            p.Value = r.HasQuasiPre ? 1 : 0; L.Add(p);
            p = new SqlParameter("@StatusId", SqlDbType.Int);
            p.Value = r.StatusId;  L.Add(p);
            p = new SqlParameter("@EmpId", SqlDbType.VarChar, 10);
            p.Value = r.ChangeUser; L.Add(p);

            int retval, rows;
            rows = ExecuteNonQuery(dbSession, "UpsertRfpMultiplierRequest", L, out retval);
            return retval;
        }

        /// <summary>
        ///     Wrapper function for SP FindRfpRequestByBatchJob.
        /// </summary>
        private static XmlReader _FindRfpRequestByBatchJob(DbSession dbSession, dynamic criteria)
        {
            var jobName = (string)criteria[0];

            var parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;
            parameters[1] = new SqlParameter("@jobName", SqlDbType.VarChar, 50);
            parameters[1].Value = jobName;
            return ExecuteXmlReader(dbSession, "FindRfpRequestByBatchJobXML", parameters);
        }

        /// <summary>
        /// Wrapper function for sp dbo.DeleteRfpReqeust.
        /// </summary>
        private static int _Delete(DbSession dbSession,dynamic id)
        {
            var parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;
            parameters[1] = new SqlParameter("@id", SqlDbType.Int);
            parameters[1].Value = id;

            int retval, rows;
            rows = ExecuteNonQuery(dbSession, "DeleteRfpRequest", parameters, out retval);
            return rows;
        }
        #endregion  // End SP Wrapper Functions
    }
}
