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
    
    public partial class YesCourseFee
    {
        public int CourseFeeID { get; set; }
        public Nullable<int> CourseID { get; set; }
        public Nullable<int> FeeID { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual YesCourse YesCourse { get; set; }
        public virtual YesFee YesFee { get; set; }
    }
}
