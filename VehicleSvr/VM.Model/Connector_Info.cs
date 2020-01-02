using System;
using System.ComponentModel.DataAnnotations;

namespace VM.Model
{
    public class Connector_Info
    {
        [Key]
        public string ID { get; set; }
        public string Name { get; set; }
        public string IP { get; set; }
        public int Port { get; set; }
        public System.DateTime InputTime { get; set; }
    }
}
