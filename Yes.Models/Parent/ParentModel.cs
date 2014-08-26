using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Models
{
    public class ParentModel
    {
        public int ParentID { get; set; }
        public string ParentFirstName { get; set; }
        public string ParentMiddleName { get; set; }
        public string ParentLastName { get; set; }
        public long ParentMobileNo { get; set; }
        public long ParentAlternateMobileNo { get; set; }
        public string ParentEmailID { get; set; }
        public string ParentAddress1 { get; set; }
        public string ParentAddress2 { get; set; }
        public string ParentCity { get; set; }
        public int DistrictID { get; set; }
        public int StateID { get; set; }
        public int ParentPinCode { get; set; }
        public string ParentOccupation { get; set; }

    }
}
