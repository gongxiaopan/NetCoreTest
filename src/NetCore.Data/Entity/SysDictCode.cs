using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NetCore.Data.Entity
{
    public class SysDictCode
    {
        public SysDictCode()
        {
            List_SysDictCode = new HashSet<SysDictCode>();
        }
        [Key]
        [MaxLength(50)]
        [Required(AllowEmptyStrings = false,ErrorMessage = "字典编码不能为空" )]
        public string ID { get; set; }
        [MaxLength(50)]
        public string ParentID { get; set; }
        [MaxLength(50)]
        [Required(AllowEmptyStrings = false,ErrorMessage ="字典名称不能为空")]
        public string DictName { get; set; }
        [MaxLength(50)]
        public string Description { get; set; }
        [MaxLength(50)]
        public string DictValue { get; set; }
        public Nullable<int> SysDefined { get; set; }
        public Nullable<int> Level { get; set; }
        [RegularExpression(@"[0-9]+",ErrorMessage ="排序号只能为数字")]
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
        public virtual SysDictCode SysDictCode_Parent { get; set; }

        public virtual ICollection<SysDictCode> List_SysDictCode { get; set; }

    }
}
