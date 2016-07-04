using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;

namespace NetCore.Data.Entity
{
    public class SysOrganization
    {
        public SysOrganization()
        {
            List_SysOrganization = new HashSet<SysOrganization>();
            SysUserOrganization = new HashSet<SysUserOrganization>();
            SysUser = new HashSet<SysUser>();
        }
        [Key]
        [MaxLength(50)]
        public string ID { get; set; }

        [MaxLength(50)]
        public string ParentId { get; set; }

        [MaxLength(50)]
        public string CustomerId { get; set; }

        [MaxLength(100)]
        [Required(AllowEmptyStrings = false,ErrorMessage ="组织名称不能为空")]
        public string OrgName { get; set; }

        [MaxLength(20)]
        public string OrgCode { get; set; }

        public Nullable<int> OrgType { get; set; }

        /// <summary>
        /// 客户组织等级
        /// </summary>
        public Nullable<int> OrgLevel { get; set; }

        /// <summary>
        /// 系统组织等级
        /// </summary>
        public Nullable<int> SysOrgLevel { get; set; }
        [DefaultValue(0)]
        [RegularExpression(@"[0-9]+", ErrorMessage ="排序号必须为数字")]
        public Nullable<int> SortNo { get; set; }
        [DefaultValue(0)]
        public Nullable<int> IsAvailable { get; set; }
        [DefaultValue(0)]
        public Nullable<int> IsDel { get; set; }
        [MaxLength(50)]
        public string AddBy { get; set; }
        public Nullable<System.DateTime> AddDate { get; set; }
        [MaxLength(50)]
        public string UpdateBy { get; set; }

        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("ParentId")]
        public virtual SysOrganization SysOrganization_Parent { get; set; }

        [ForeignKey("CustomerId")]
        public virtual Customers Customers { get; set; }

        public virtual ICollection<SysOrganization> List_SysOrganization { get; set; }
        public virtual ICollection<SysUserOrganization> SysUserOrganization { get; set; }
        public virtual ICollection<SysUser> SysUser { get; set; }
    }
}
