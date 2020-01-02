using System;
using System.Collections.Generic;
using System.Text;

namespace NodeCommon
{
    /// <summary>
    /// 获取终端信息
    /// </summary>
    public class MapTEInfoRequest:NodeRequest
    {
        public string IMEI { get; set; }
    }
}
