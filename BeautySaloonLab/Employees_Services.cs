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
    
    public partial class Employees_Services
    {
        public int id { get; set; }
        public Nullable<int> id_Employes { get; set; }
        public Nullable<int> id_Services_Customers { get; set; }
    
        public virtual employees employees { get; set; }
        public virtual Services_Customers Services_Customers { get; set; }
    }
}
