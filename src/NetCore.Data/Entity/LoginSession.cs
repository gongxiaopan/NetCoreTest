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
        /// <summary>
        /// 00：web E端
        /// 01:微信端
        /// 33:云学习android
        /// 44:云学习ios
        /// 200:we客户端
        /// </summary>
        [MaxLength(50)]
        public string OS { get; set; }

        [MaxLength(50)]
        public string VerWithinNo { get; set; }

        [MaxLength(50)]
        public string WH { get; set; }

        [MaxLength(250)]
        public string Accept { get; set; }
        [DefaultValue(0)]
        public Nullable<int> LoginCount { get; set; }
        public Nullable<System.DateTime> FirstLoginTime { get; set; }
        public Nullable<System.DateTime> LastLoginTime { get; set; }
        public Nullable<System.DateTime> LoginDate { get; set; }

        [ForeignKey("UserId")]
        public virtual SysUser SysUser { get; set; }
    }
}
