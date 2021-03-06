﻿using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace NetCore.Data.Entity
{
    public class Customers
    {
        [Key]
        [MaxLength(50)]
        public string ID { get; set; }
        [MaxLength(100)]
        public string CustomerName { get; set; }
        /// <summary>
        /// 客户域
        /// </summary>
        [MaxLength(50)]
        public string CustomerDomain { get; set; }
        public Nullable<int> SortNo { get; set; }
        [DefaultValue(1)]
        public int IsAvailable { get; set; }
        [DefaultValue(0)]
        public int IsDel { get; set; }
        [MaxLength(50)]
        public string AddBy { get; set; }
        public DateTime AddDate { get; set; }
        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<DateTime> UpdateDate { get; set; }
    }
}
