//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GridView
{
    using System;
    using System.Collections.Generic;
    
    public partial class customer
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public Nullable<int> Dep_id { get; set; }
    
        public virtual Departement Departement { get; set; }
    }
}
