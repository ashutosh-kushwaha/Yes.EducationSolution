using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models.Employees;

namespace Yes.Models
{
    public class EmployeeModel
    {
        public int EmployeeID { get; set; }
        public string EmployeeFirstName { get; set; }
        public string EmployeeMiddleName { get; set; }
        public string EmployeeLastName { get; set; }
        public string EmployeeMobileNo { get; set; }
        public string EmployeeAlternateMobileNo { get; set; }
        public string EmployeeEmailID { get; set; }
        public string EmployeeAddress1 { get; set; }
        public string EmployeeAddress2 { get; set; }
        public string EmployeeCity { get; set; }
        public string EmployeeDisctrict { get; set; }
        public string EmployeeState { get; set; }
        public Nullable<int> EmployeePinCode { get; set; }
        public Nullable<int> DesignationID { get; set; }
        public string DesignationName { get; set; }
   
    }
}
