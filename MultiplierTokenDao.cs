using log4net;
using SCA.VAS.Common.Utilities;
using SCA.VAS.Common.ValueObjects;
using SCA.VAS.ValueObjects.Rfp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace SCA.VAS.DataAccess.Rfp
{
    public class MultiplierTokenDao : AbstractDataAccessObject
    {
        private static readonly ILog _logger;
        #region Constants 

        #endregion Constants
        #region Constructors 
        static MultiplierTokenDao()
        {
            _logger = LoggingUtility.GetLogger(typeof(MultiplierTokenDao).FullName);
        }
        #endregion
        public ValueObjectCollection<MultiplierTokenInput> GetInputTokenMap(IDataSource dataSource)
        {
            String methodName = "MultiplierTokenDao.GetInputTokenMap() - " + dataSource.Name;
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteXmlReader<ValueObjectCollection<MultiplierTokenInput>>(dataSource, _GetInputTokonMap, null);                      
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return null;
            }
        }
        public ValueObjectCollection<MultiplierToken> GetCalcTokenMap(IDataSource dataSource)
        {
            String methodName = "MultiplierTokenDao.GetCalcTokenMap() - " + dataSource.Name;
            if (_logger.IsDebugEnabled)
            {
                LoggingUtility.logMethodEntry(_logger, methodName);
            }
            try
            {
                return ExecuteXmlReader<ValueObjectCollection<MultiplierToken>>(dataSource, _GetCalcTokonMap, null);
            }
            catch (Exception e)
            {
                _logger.Error(methodName, e);
                return null;
            }
        }

        #region Wrapper function

        /// <summary>
        ///     Wrapper function for SP GetMultiplierTokenInputMapXML.
        /// </summary>
        private static XmlReader _GetInputTokonMap(DbSession dbSession, dynamic criteria)
        {
            var parameters = new SqlParameter[1];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;

            return ExecuteXmlReader(dbSession, "GetMultiplierTokenInputMapXML", parameters);
        }
        /// <summary>
        ///     Wrapper function for SP GetMultiplierTokenInputMapXML.
        /// </summary>
        private static XmlReader _GetCalcTokonMap(DbSession dbSession, dynamic criteria)
        {
            var parameters = new SqlParameter[1];
            parameters[0] = new SqlParameter("@ReturnValue", SqlDbType.Int);
            parameters[0].Direction = ParameterDirection.ReturnValue;

            return ExecuteXmlReader(dbSession, "GetMultiplierTokenCalcMapXML", parameters);
        }
        #endregion
    }
}
