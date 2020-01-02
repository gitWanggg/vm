using System;
using System.Collections.Generic;
using System.Text;

namespace GpsObd.BLL
{
    interface IFindTableable
    {
        string FindTable(string TEID,EnumDataType DataType);
    }
}
