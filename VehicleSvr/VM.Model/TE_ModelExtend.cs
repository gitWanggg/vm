using System;
using System.ComponentModel.DataAnnotations;


namespace VM.Model
{
    /// <summary>
    /// 终端类型扩展信息
    /// </summary>
    public class TE_ModelExtend
    {
        [Key]
        public int ID { get; set; }

        public string BriefText { get; set; }
    }
}
