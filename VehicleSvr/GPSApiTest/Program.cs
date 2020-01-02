using System;
using System.Collections.Generic;
using GpsObd.Common;
namespace GPSApiTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("初始化");
            AngleX.Test.AppMainStart.Start(null, null);


            string urlQGPS = "http://localhost:3301/api/node/QueryOBD";
            QueryRequest qR = new QueryRequest();
            qR.EndTime = Convert.ToDateTime("2020-01-01 20:33");
            qR.StartTime = Convert.ToDateTime("2020-01-01 20:25");
            qR.TEID = "a000234";
            qR.Top = 100;
            List<OBD> list = AngleX.AppXGlobal.IHttp.PostData<List<OBD>>(urlQGPS,qR);
            foreach (OBD gItem in list)
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(gItem));
            Console.WriteLine("Hello World!");


            Console.ReadLine();
        }

        static void exe()
        {
            string urlAdd = "http://localhost:3301/api/node/add";
            for (int i = 0; i < 1800; i++) {
                GPS gps = new GPS();
                gps.GetTime = DateTime.Now;
                gps.Lat = 12.33342m + i % 100;
                gps.Lng = 12.33452m;
                gps.TEID = "a00023" + i % 10;

                OBD obd = new OBD();
                obd.GetTime = DateTime.Now;
                obd.TEID = gps.TEID;
                obd.Speed = 20 + i % 30;
                obd.OilPressure = 30;

                GpsObdContainer r = new GpsObdContainer();
                r.Gps = gps;
                r.Obd = obd;

                Console.WriteLine("开始上传");
                int nID = AngleX.AppXGlobal.IHttp.PostData<int>(urlAdd, r);

                Console.WriteLine(nID);

                System.Threading.Thread.Sleep(100);
            }
        }
    }
}
