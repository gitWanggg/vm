using System;
using System.Collections.Generic;
using System.Text;

namespace GpsObd.Common
{
    public class OBD
    {
        public int ID { get; set; }
        public int PartitionCode { get; set; }
        public string TEID { get; set; }        
        public System.DateTime GetTime { get; set; }
        /// <summary>
        /// 车速 有效范围0~254 最小计量单元1km/h
        /// </summary>
        public int Speed { get; set; }
        /// <summary>
        /// 转速 有效范围0~65535最小计量单元1prm

        /// </summary>
        public int Rotate { get; set; }
        /// <summary>
        /// 节气门位置 0%~100%
        /// </summary>
        public int Restrictor { get; set; }
        /// <summary>
        /// 水温 有效范围-40℃~215℃
        ///说明：偏移量为40，即0代表-40℃，1代表-39℃，40代表0℃......
        /// </summary>
        public int WaterT { get; set; }
        /// <summary>
        /// 油温 有效范围-40℃~215℃
        ///说明：偏移量为40，即0代表-40℃，1代表-39℃，40代表0℃......
        /// </summary>
        public int OilT { get; set; }
        /// <summary>
        /// 油压(kpa)
        /// </summary>
        public int OilPressure { get; set; }
        /// <summary>
        /// 剩余油量(%)
        /// </summary>
        public int OilRemain { get; set; }
        public System.DateTime InputTime { get; set; }
    }
}
