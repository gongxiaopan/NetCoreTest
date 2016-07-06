using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysRight
    {
        public SysRight()
        {
            List_SysRight = new HashSet<SysRight>();
            SysRoleRight = new HashSet<SysRoleRight>();
        }

        [Key]
        [MaxLength(50)]
        public string ID { get; set; }
        /// <summary>
        /// 权限名称
        /// </summary>
        [MaxLength(50)]
        public string RightName { get; set; }
        /// <summary>
        /// 权限显示名称
        /// </summary>
        [MaxLength(50)]
        public string DisplayName { get; set; }
        /// <summary>
        /// 父id
        /// </summary>
        [MaxLength(50)]
        public string ParentCode { get; set; }
        /// <summary>
        /// 层级数
        /// </summary>
        public Nullable<int> LevelCount { get; set; }
        /// <summary>
        /// 是否目录
        /// </summary>
        public Nullable<int> IsMenu { get; set; }
        public Nullable<int> IsSysManage { get; set; }
        /// <summary>
        /// 操作处理地址
        /// 
        /// 几个保留的特殊的参数:
        ///  1. _ulp_right_action_mode : 可根据该值在处理方法中进行不同的展示，如：直接跳转，返回json数据等等
        ///  1. _ulp_right_action_notip : 操作中去除一些提示 
        /// </summary>
        [MaxLength(200)]
        public string MenuUrl { get; set; }
        [MaxLength(50)]
        public string SubSystem { get; set; }
        /// <summary>
        /// 按钮操作
        /// </summary>
        public Nullable<int> IsControl { get; set; }
        /// <summary>
        /// 列表中操作
        /// </summary>
        public Nullable<int> IsTableControl { get; set; }
        public Nullable<int> IsJsControl { get; set; }
        [MaxLength(50)]
        public string ActionType { get; set; }
        [MaxLength(50)]
        public string Pic { get; set; }
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

        [ForeignKey("ParentCode")]
        public virtual SysRight SysRight_Parent { get; set; }

        public virtual ICollection<SysRight> List_SysRight { get; set; }
        public virtual ICollection<SysRoleRight> SysRoleRight { get; set; }
    }
}
