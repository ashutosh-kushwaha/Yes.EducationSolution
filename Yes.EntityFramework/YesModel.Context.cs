﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Yes.EntityFramework
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class YesEntities : DbContext
    {
        public YesEntities()
            : base("name=YesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<YesCourse> YesCourses { get; set; }
        public DbSet<YesCourseFee> YesCourseFees { get; set; }
        public DbSet<YesDesignation> YesDesignations { get; set; }
        public DbSet<YesEmployee> YesEmployees { get; set; }
        public DbSet<YesFee> YesFees { get; set; }
        public DbSet<YesParent> YesParents { get; set; }
        public DbSet<YesPrivilege> YesPrivileges { get; set; }
        public DbSet<YesStudent> YesStudents { get; set; }
        public DbSet<YesUser> YesUsers { get; set; }
        public DbSet<YesUserPrivilege> YesUserPrivileges { get; set; }
    }
}
