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
        public string RoleId { get; set; }
        [MaxLength(50)]
        public string UserId { get; set; }

        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("RoleId")]
        public virtual SysRole SysRole { get; set; }
        [ForeignKey("UserId")]
        public virtual SysUser SysUser { get; set; }
    }
}
