using System;
using System.ComponentModel.DataAnnotations;


namespace VM.Model
{
    public class Connector_Loading
    {
        [Key]
        public string ID { get; set; }
        public int LoadMax { get; set; }
        public int LoadingCount { get; set; }
        public int RunStatus { get; set; }
        public Nullable<System.DateTime> RunTime { get; set; }
        public Nullable<System.DateTime> StopTime { get; set; }
    }
}
