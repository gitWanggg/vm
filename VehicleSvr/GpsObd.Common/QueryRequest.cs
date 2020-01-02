using System;
using System.Collections.Generic;
using System.Text;

namespace GpsObd.Common
{
    public class QueryRequest
    {
        public string TEID { get; set; }

        public int Top { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime EndTime { get; set; }
    }
}
