﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BeautySaloonLab
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BeautySaloonDatabaseEntities : DbContext
    {
        public BeautySaloonDatabaseEntities()
            : base("name=BeautySaloonDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<additional_services> additional_services { get; set; }
        public virtual DbSet<Customer> Customer { get; set; }
        public virtual DbSet<Department> Department { get; set; }
        public virtual DbSet<employees> employees { get; set; }
        public virtual DbSet<Employees_Services> Employees_Services { get; set; }
        public virtual DbSet<History_of_pay> History_of_pay { get; set; }
        public virtual DbSet<Manufacturer> Manufacturer { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<services> services { get; set; }
        public virtual DbSet<Services_Customers> Services_Customers { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Tag> Tag { get; set; }
        public virtual DbSet<Topicality> Topicality { get; set; }
    }
}
