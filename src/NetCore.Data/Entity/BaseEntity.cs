using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace NetCore.Data.Entity
{
    public class BaseEntity : IdentityUser
    {
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
