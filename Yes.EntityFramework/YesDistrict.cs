//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class YesDistrict
    {
        public YesDistrict()
        {
            this.YesEmployees = new HashSet<YesEmployee>();
            this.YesParents = new HashSet<YesParent>();
        }
    
        public int DistrictID { get; set; }
        public string DisctrictName { get; set; }
        public int StateID { get; set; }
        public string DisctrictDescription { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual YesState YesState { get; set; }
        public virtual ICollection<YesEmployee> YesEmployees { get; set; }
        public virtual ICollection<YesParent> YesParents { get; set; }
    }
}
