using System;
using System.Collections.Generic;
using System.Text;

namespace GpsObd.Common
{
    public class GPS
    {
        public int ID { get; set; }
        public int PartitionCode { get; set; }
        public string TEID { get; set; }      
        public System.DateTime GetTime { get; set; }
        public decimal Lng { get; set; }
        public decimal Lat { get; set; }
        public System.DateTime InputTime { get; set; }
    }
}
