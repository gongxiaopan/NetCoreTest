using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace NetCore.Data.Entity
{
    public class BaseEntity : IdentityUser
    {
        [MaxLength(50)]
        public string AddBy { get; set; }
        public DateTime AddDate { get; set; }
        [MaxLength(50)]
        public string UpdateBy { get; set; }
        public Nullable<DateTime> UpdateDate { get; set; }
        public bool IsAvailable { get; set; }
        public bool IsDel { get; set; }
    }
}
