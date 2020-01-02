using System;
using System.ComponentModel.DataAnnotations;

namespace VM.Model
{
    public class TE_Info
    {
        [Key]
        public string ID { get; set; }

        public string IMEI { get; set; }

        public DateTime InputTime { get; set; }

        public int TEModelID { get; set; }
    }
}
