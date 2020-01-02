using System;
using System.Collections.Generic;
using System.Text;
using GpsObd.Common;
namespace GpsObd.BLL
{
    public  interface IBllMainAPI
    {        
        string Add(GPS Gps, OBD Obd);

        List<GPS> QueryGps(DateTime Start, DateTime End, string TEID);

        List<OBD> QueryObd(DateTime Start, DateTime End, string TEID);

        GPS FindGps(string ID);

        GPS FindOBD(string ID);
    }
}
