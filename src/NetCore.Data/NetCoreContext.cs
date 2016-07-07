using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using NetCore.Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCore.Data
{
    public class NetCoreContext :DbContext
    {
        public NetCoreContext(DbContextOptions<NetCoreContext> options)
            : base(options)
        {
        }
        public DbSet<Customers> Customers { get { return Set<Customers>(); } }
        /// <summary>
        /// 组织管理
        /// </summary>
        public DbSet<SysOrganization> SysOrganization { get { return Set<SysOrganization>(); } }
        public DbSet<SysUser> SysUser { get { return Set<SysUser>(); } }
        public DbSet<SysUserOrganization> SysUserOrganization { get { return Set<SysUserOrganization>(); } }
        /// <summary>
        /// 角色管理
        /// </summary>
        public DbSet<SysRole> SysRole { get { return Set<SysRole>(); } }
        public DbSet<SysRoleRight> SysRoleRight { get { return Set<SysRoleRight>(); } }
        public DbSet<SysRoleUser> SysRoleUser { get { return Set<SysRoleUser>(); } }
        public DbSet<SysRight> SysRight { get { return Set<SysRight>(); } }
        public DbSet<LoginSession> LoginSession { get { return Set<LoginSession>(); } }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Customers>().ToTable("Customers");
            modelBuilder.Entity<SysOrganization>().ToTable("SysOrganization");
            modelBuilder.Entity<SysUser>().ToTable("SysUser");
            modelBuilder.Entity<SysUserOrganization>().ToTable("SysUserOrganization");
            modelBuilder.Entity<SysRole>().ToTable("SysRole");
            modelBuilder.Entity<SysRoleRight>().ToTable("SysRoleRight");
            modelBuilder.Entity<SysRoleUser>().ToTable("SysRoleUser");
            modelBuilder.Entity<SysRight>().ToTable("SysRight");
            modelBuilder.Entity<LoginSession>().ToTable("LoginSession");
        }
    }
}
