using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysRole
    {
        public SysRole()
        {
            SysRoleRight = new HashSet<SysRoleRight>();
            SysRoleUser = new HashSet<SysRoleUser>();
        }

        [MaxLength(36)]
        [Required(AllowEmptyStrings = false, ErrorMessage ="角色ID不能为空")]
        public string ID { get; set; }

        [MaxLength(20)]
        [Required(AllowEmptyStrings = false, ErrorMessage ="角色名称不能为空")]
        public string RoleName { get; set; }

        [MaxLength(36)]
        public string ParentID { get; set; }
        
        [DisplayName("登录后跳转页")]
        [MaxLength(255)]
        public string HomePage { get; set; }

        [DisplayName("是否系统内置")]
        public Nullable<int> SysDefined { get; set; }
        
        public Nullable<int> RoleLevel { get; set; }
        [RegularExpression(@"[0-9]+", ErrorMessage ="排序号必须为数字")]
        public Nullable<int> SortNo { get; set; }
        public Nullable<int> IsAvailable { get; set; }
        public Nullable<int> IsDel { get; set; }
        [MaxLength(50)]
        public string AddBy { get; set; }

        public Nullable<System.DateTime> AddDate { get; set; }
        [MaxLength(50)]
        public string UpdateBy { get; set; }

        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("ParentID")]
        public virtual SysRole SysRole_Parent { get; set; }

        public virtual ICollection<SysRoleRight> SysRoleRight { get; set; }
        public virtual ICollection<SysRoleUser> SysRoleUser { get; set; }

    }
}
