using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;

namespace NetCore.Data.Entity
{
    public class LoginSession
    {
        [Key]
        [MaxLength(36)]
        public string ID { get; set; }

        [MaxLength(50)]
        public string UserId { get; set; }

        [MaxLength(64)]
        public string SID { get; set; }

        [MaxLength(50)]
        public string WH { get; set; }

        [DefaultValue(0)]
        public Nullable<int> LoginCount { get; set; }
        public Nullable<System.DateTime> FirstLoginTime { get; set; }
        public Nullable<System.DateTime> LastLoginTime { get; set; }
        public Nullable<System.DateTime> LoginDate { get; set; }

        [ForeignKey("UserId")]
        public virtual SysUser SysUser { get; set; }
    }
}
