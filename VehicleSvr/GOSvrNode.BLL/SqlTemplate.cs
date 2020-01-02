using System;
using System.Collections.Generic;
using System.Text;

namespace GOSvrNode.BLL
{
    class SqlTemplate
    {
        public static readonly string InsertGPS = @"INSERT INTO GPS_R{0}(PartitionCode,TEID,GetTime,Lng,Lat,InputTime)  output inserted.id  VALUES ({1},@TEID,'{2}',{3},{4},GETDATE()) ";

        public static readonly string InsertOBD = @"INSERT INTO OBD_R{0}(ID,PartitionCode,TEID,GetTime,Speed,Rotate,Restrictor,WaterT,OilT,OilPressure,OilRemain,InputTime)
                                                    VALUES ({1},{2},@TEID,'{3}',{4},{5},{6},{7},{8},{9},{10},GETDATE())";

        public static readonly string QueryGPS = @" SELECT TOP {3}  [ID],[PartitionCode],[TEID],[GetTime],[Lng],[Lat],[InputTime]
                                                FROM GPS_R{0} WHERE PartitionCode between {1} and {2}  AND TEID=@TEID ";

        public static readonly string QueryOBD = @" SELECT TOP {3} [ID],[PartitionCode],[TEID],[GetTime],[Speed],[Rotate] ,[Restrictor],[WaterT],[OilT] ,[OilPressure],[OilRemain],[InputTime]
                                                    FROM OBD_R{0} WHERE PartitionCode between {1} and {2}  AND TEID=@TEID  ";

        public static readonly string TEIDKey = "@TEID";

        static readonly int Divisor = 10;
        public static int FindTableMod(string TEID)
        {
            // var md5 = System.Security.Cryptography.MD5.Create();
            byte[] bs = Encoding.UTF8.GetBytes(TEID);// md5.ComputeHash(Encoding.UTF8.GetBytes(TEID));
            int nA = 0;
            foreach (byte b in bs) {
                nA += b;
            }
            return nA % Divisor;
        }


        public static readonly string RKeyID = "ID";
        public static readonly string RKeyPartitionCode = "PartitionCode";
        public static readonly string RKeyTEID = "TEID";
        public static readonly string RKeyGetTime = "GetTime";
        public static readonly string RkeyLng = "Lng";
        public static readonly string RKeyLat = "Lat";
        public static readonly string RKeyInputTime = "InputTime";

        public static readonly string RKeySpeed = "Speed";
        public static readonly string RKeyRotate = "Rotate";
        public static readonly string RkeyRestrictor = "Restrictor";
        public static readonly string RKeyWaterT = "WaterT";
        public static readonly string RKeyOilT = "OilT";
        public static readonly string RKeyOilPressure = "OilPressure";
        public static readonly string RKeyOilRemain = "OilRemain";



    }
}
