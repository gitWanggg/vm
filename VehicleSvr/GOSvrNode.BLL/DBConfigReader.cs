using System;
using System.Collections.Generic;
using System.Text;

namespace GOSvrNode.BLL
{
    class DBConfigReader
    {
        static string configpath = "config\\dbconfig.json";
        public Dictionary<string,string> Read()
        {
            string currentPath = System.AppDomain.CurrentDomain.BaseDirectory;
            string filePath = currentPath + configpath;
            if (!System.IO.File.Exists(filePath))
                throw new AngleX.CustomException("无法找到数据配置文件");
            string jsonTxt = System.IO.File.ReadAllText(filePath);
            Dictionary<string, string> dicConfig = AngleX.AppXGlobal.ISer.DeserializeObject<Dictionary<string,string>>(jsonTxt);
            return dicConfig;
        }
        public string Find(string Key)
        {
            Dictionary<string, string> configDic = Read();
            if (!configDic.ContainsKey(Key))
                throw new AngleX.CustomException("无法找到Key为"+Key+"的配置信息");
            return configDic[Key];
        }
    }
}
