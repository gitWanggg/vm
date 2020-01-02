using System;
using System.Collections.Generic;
using System.Text;

namespace GOSvrNode.BLL
{
    public class GDBContextManager
    {
        static Dictionary<string, GDBContext> cache;

        static GDBContextManager()
        {
            cache = new Dictionary<string, GDBContext>();
            DBConfigReader reader = new DBConfigReader();
            Dictionary<string,string> dicDB = reader.Read();
            foreach(string key in dicDB.Keys) {
                string conStr = dicDB[key];
                GDBContext db = new GDBContext(conStr);
                cache[key] = db;
            }

        }
        public static GDBContext Find(DateTime DtYear)
        {
            string key = DtYear.ToString("yyyy");
            if (cache.ContainsKey(key))
                return cache[key];
            cache[key] = Creater(key);
            return cache[key];
        }
        static GDBContext Creater(string Year)
        {
            DBConfigReader reader = new DBConfigReader();
            Dictionary<string, string> dicDB = reader.Read();
            if (!dicDB.ContainsKey(Year))
                throw new AngleX.CustomException("无法找到数据源");
            string conStr = dicDB[Year];
            GDBContext db = new GDBContext(conStr);
            return db;
        }
    }
}
