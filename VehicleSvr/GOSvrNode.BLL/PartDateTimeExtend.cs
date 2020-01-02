using System;
using System.Collections.Generic;
using System.Text;

namespace GOSvrNode.BLL
{
    public static class PartDateTimeExtend
    {
        public static int  ToPartCode(this DateTime dtA)
        {
            return Convert.ToInt32(dtA.ToString("MMddHHmm"));
        }
    }
}
