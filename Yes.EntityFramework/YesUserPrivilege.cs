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
    
    public partial class YesUserPrivilege
    {
        public int UserPrivilegeID { get; set; }
        public int PrivilegeID { get; set; }
        public int UserID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual YesPrivilege YesPrivilege { get; set; }
        public virtual YesUser YesUser { get; set; }
    }
}
