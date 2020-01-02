using System;
using System.Collections.Generic;
using System.Text;
using AngleXCore.Sql;
using GpsObd.Common;
using System.Data;
namespace GOSvrNode.BLL
{
    public class GDBContext
    {
        public string SqlConnectString { get; set; }

        public GDBContext(string sqlConString)
        {
            this.SqlConnectString = sqlConString;
        }
        
        public int AddR(GPS gps,OBD obd)
        {
            int nTable = SqlTemplate.FindTableMod(gps.TEID);
            Dictionary<string, object> dicPars = new Dictionary<string, object>();
            dicPars.Add(SqlTemplate.TEIDKey, gps.TEID);
            int nCode = gps.GetTime.ToPartCode();
            string timeStr = gps.GetTime.ToString("yyyy-MM-dd HH:mm:ss");
            string sqlInsert = string.Format(SqlTemplate.InsertGPS, nTable, nCode, timeStr, gps.Lng, gps.Lng);
            using (var con = SqlHelper.GetConnection(SqlConnectString)) {               
                System.Data.DataTable dtID = SqlHelper.ExecuteDataset(con, sqlInsert,dicPars);
                int nID = Convert.ToInt32(dtID.Rows[0][0]);
                string sqlInto2 = string.Format(SqlTemplate.InsertOBD, nTable,nID, nCode,timeStr,obd.Speed,obd.Rotate
                    ,obd.Restrictor,obd.WaterT,obd.OilT,obd.OilPressure,obd.OilRemain);
                SqlHelper.ExecuteNonQuery(con, sqlInto2,dicPars);
                return nID;
            }
        }
       
        public List<GPS> QueryGPS(string TEID,DateTime StartTime,DateTime EndTime,int Top)
        {
            int nStartCode = StartTime.ToPartCode();
            int nEndCode = EndTime.ToPartCode();
            int nTable = SqlTemplate.FindTableMod(TEID);
            Dictionary<string, object> dicPars = new Dictionary<string, object>();
            dicPars.Add(SqlTemplate.TEIDKey, TEID);
            string sqlQuery = string.Format(SqlTemplate.QueryGPS, nTable, nStartCode, nEndCode, Top);           
            DataTable dtRows = null;
            using (var con = SqlHelper.GetConnection(SqlConnectString)) {
                dtRows = SqlHelper.ExecuteDataset(con, sqlQuery, dicPars);                
            }
            List<GPS> list = new List<GPS>();
            if (dtRows != null) {
                foreach(DataRow drItem in dtRows.Rows) {
                    GPS gps = new GPS {
                        ID = Convert.ToInt32(drItem[SqlTemplate.RKeyID]),
                        GetTime = Convert.ToDateTime(drItem[SqlTemplate.RKeyGetTime]),
                        InputTime = Convert.ToDateTime(drItem[SqlTemplate.RKeyInputTime]),
                        Lat = Convert.ToDecimal(drItem[SqlTemplate.RKeyLat]),
                        Lng = Convert.ToDecimal(drItem[SqlTemplate.RkeyLng]),
                        TEID = drItem[SqlTemplate.RKeyTEID].ToString(),
                        PartitionCode = Convert.ToInt32(drItem[SqlTemplate.RKeyPartitionCode])
                    };
                    list.Add(gps);
                }
            }
            return list;
        }
       
        public List<OBD> QueryOBD(string TEID,DateTime StartTime,DateTime EndTime,int Top)
        {
            int nStartCode = StartTime.ToPartCode();
            int nEndCode = EndTime.ToPartCode();
            int nTable = SqlTemplate.FindTableMod(TEID);
            Dictionary<string, object> dicPars = new Dictionary<string, object>();
            dicPars.Add(SqlTemplate.TEIDKey, TEID);
            string sqlQuery = string.Format(SqlTemplate.QueryOBD, nTable, nStartCode, nEndCode, Top);
            DataTable dtRows = null;
            using (var con = SqlHelper.GetConnection(SqlConnectString)) {
                dtRows = SqlHelper.ExecuteDataset(con, sqlQuery, dicPars);
            }
            List<OBD> list = new List<OBD>();
            if (dtRows != null) {
                foreach (DataRow drItem in dtRows.Rows) {
                    OBD obd = new OBD {
                        ID = Convert.ToInt32(drItem[SqlTemplate.RKeyID]),
                        GetTime = Convert.ToDateTime(drItem[SqlTemplate.RKeyGetTime]),
                        InputTime = Convert.ToDateTime(drItem[SqlTemplate.RKeyInputTime]),
                        Speed = Convert.ToInt32(drItem[SqlTemplate.RKeySpeed]),
                        Rotate = Convert.ToInt32(drItem[SqlTemplate.RKeyRotate]),
                        Restrictor = Convert.ToInt32(drItem[SqlTemplate.RkeyRestrictor]),
                        WaterT = Convert.ToInt32(drItem[SqlTemplate.RKeyWaterT]),
                        OilT = Convert.ToInt32(drItem[SqlTemplate.RKeyOilT]),
                        OilPressure = Convert.ToInt32(drItem[SqlTemplate.RKeyOilPressure]),
                        OilRemain = Convert.ToInt32(drItem[SqlTemplate.RKeyOilRemain]),
                        TEID = drItem[SqlTemplate.RKeyTEID].ToString(),
                        PartitionCode = Convert.ToInt32(drItem[SqlTemplate.RKeyPartitionCode])
                    };
                    list.Add(obd);
                }
            }
            return list;
        }
    }
}
