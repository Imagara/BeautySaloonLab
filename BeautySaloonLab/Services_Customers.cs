//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Services_Customers
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Services_Customers()
        {
            this.Employees_Services = new HashSet<Employees_Services>();
            this.History_of_pay = new HashSet<History_of_pay>();
        }
    
        public int id { get; set; }
        public Nullable<int> Id_customers { get; set; }
        public Nullable<int> Id_additional_services { get; set; }
        public Nullable<System.DateTime> Date_start { get; set; }
        public string Comment { get; set; }
    
        public virtual additional_services additional_services { get; set; }
        public virtual Customer Customer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Employees_Services> Employees_Services { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<History_of_pay> History_of_pay { get; set; }
    }
}