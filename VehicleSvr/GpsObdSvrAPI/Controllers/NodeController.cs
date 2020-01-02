using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using GpsObd.Common;
using GOSvrNode.BLL;
namespace GpsObdSvrAPI.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class NodeController : ControllerBase
    {
        public ActionResult<int> Add(GpsObdContainer model)
        {
            GDBContext db = GDBContextManager.Find(model.Gps.GetTime);
            return db.AddR(model.Gps, model.Obd);
        }
        public ActionResult<List<GPS>> QueryGps(QueryRequest Q)
        {
            GDBContext db = GDBContextManager.Find(Q.StartTime);
            return db.QueryGPS(Q.TEID, Q.StartTime, Q.EndTime,Q.Top);
        }
        public ActionResult<List<OBD>> QueryObd(QueryRequest Q)
        {
            GDBContext db = GDBContextManager.Find(Q.StartTime);
            return db.QueryOBD(Q.TEID, Q.StartTime, Q.EndTime, Q.Top);
        }

    }
}