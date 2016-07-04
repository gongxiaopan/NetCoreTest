using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysUserOrganization
    {
        [MaxLength(36)]
        public string ID { get; set; }
        [MaxLength(50)]
        public string UserId { get; set; }
        [MaxLength(50)]
        public string OrganizationId { get; set; }
        /// <summary>
        /// 权限类型：manage：后台管辖权限范围，view：下发权限范围
        /// </summary>
        [MaxLength(20)]
        public string VMLimitType { get; set; }

        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }

        [ForeignKey("UserId")]
        public virtual SysUser SysUser { get; set; }

        [ForeignKey("OrganizationId")]
        public virtual SysOrganization SysOrganization { get; set; }
    }
}
