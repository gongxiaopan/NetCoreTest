using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysRoleRight
    {
        [Key]
        [MaxLength(36)]
        public string ID { get; set; }
        [MaxLength(36)]
        public string RoleCode { get; set; }
        [MaxLength(50)]
        public string RightCode { get; set; }

        [MaxLength(50)]
        public string UpdateBy { get; set; }

        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("RoleCode")]        
        public virtual SysRole SysRole { get; set; }

        [ForeignKey("RightCode")]
        public virtual SysRight SysRight { get; set; }
    }
}
