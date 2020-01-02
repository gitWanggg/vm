using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace VM.Model
{
    /// <summary>
    /// 终端类型
    /// </summary>
    public class TE_Model
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]  //设置自增
        public int ID { get; set; }

        public string Name { get; set; }

        public DateTime InputTime { get; set; }
    }
}
