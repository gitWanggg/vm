using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VM.Model
{
    public class ConnectRecord
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]  //设置自增
        public int ID { get; set; }
        public string ConnectorID { get; set; }
        public string TEID { get; set; }
        public System.DateTime InputTime { get; set; }
    }
}
