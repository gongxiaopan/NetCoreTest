using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysRoleUser
    {
        [Key]
        [MaxLength(36)]
        public string ID { get; set; }
        [MaxLength(36)]
        public string RoleCode { get; set; }
        [MaxLength(50)]
        public string UserCode { get; set; }

        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("RoleCode")]
        public virtual SysRole SysRole { get; set; }
        [ForeignKey("UserCode")]
        public virtual SysUser SysUser { get; set; }
    }
}
