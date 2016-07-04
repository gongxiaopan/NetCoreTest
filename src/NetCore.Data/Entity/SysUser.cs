using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;

namespace NetCore.Data.Entity
{
    public class SysUser
    {
        public SysUser()
        {
            SysRoleUser = new HashSet<SysRoleUser>();
            SysUserOrganization = new HashSet<SysUserOrganization>();
            LoginSession = new HashSet<LoginSession>();
        }


        [Key]
        [MaxLength(50)]
        public string ID { get; set; }
        /// <summary>
        /// 用户账号
        /// </summary>
        [MaxLength(100)]
        public string UserNo { get; set; }
        /// <summary>
        /// 用户名
        /// </summary>
        [MaxLength(100)]
        public string UserName { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        [MaxLength(50)]
        public string Password { get; set; }
        /// <summary>
        /// 用户类型 
        /// </summary>
        [MaxLength(50)]
        public string UserType { get; set; }
        /// <summary>
        /// 地址 
        /// </summary>
        [MaxLength(250)]
        public string Address { get; set; }
        /// <summary>
        /// 组织
        /// </summary>
        [MaxLength(50)]
        public string OrgId { get; set; }
        /// <summary>
        /// 岗位
        /// </summary>
        [MaxLength(50)]
        public string PositionId { get; set; }
        /// <summary>
        /// 手机号
        /// </summary>
        [MaxLength(100)]
        [RegularExpression(@"((\d{3,4})|\d{3,4}-)?(\d{3,13})(-(\d{1,4}))?", ErrorMessage ="手机号码格式不正确")]
        public string TelePhone { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        [MaxLength(100)]
        public string Email { get; set; }
        /// <summary>
        /// 排序
        /// </summary>
        [DefaultValue(0)]
        [RegularExpression(@"[0-9]+", ErrorMessage ="排序号必须能为数字")]
        public Nullable<int> SortNo { get; set; }
        /// <summary>
        /// 是否启用
        /// </summary>
        [DefaultValue(0)]
        public Nullable<int> IsAvailable { get; set; }
        /// <summary>
        /// 是否删除
        /// </summary>
        [DefaultValue(0)]
        public Nullable<int> IsDel { get; set; }
        /// <summary>
        /// 客户域
        /// </summary>
        [MaxLength(50)]
        public string CustomerId { get; set; }
        [MaxLength(50)]
        public string AddBy { get; set; }
        public Nullable<System.DateTime> AddDate { get; set; }
        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }

        #region 关联       
        [ForeignKey("CustomerId")]
        public virtual Customers Customers { get; set; }
        [ForeignKey("OrgId")]
        public virtual SysOrganization SysOrganization { get; set; }
        public virtual ICollection<SysRoleUser> SysRoleUser { get; set; }
        /// <summary>
        /// 当前用户拥有的组织权限
        /// </summary>
        public virtual ICollection<SysUserOrganization> SysUserOrganization { get; set; }
        public virtual ICollection<LoginSession> LoginSession { get; set; }
        #endregion

    }
}
