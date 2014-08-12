using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.DataAdaptder;
using Yes.Models;
using System.Web;

namespace Yes.Service
{
    public class EmployeeService : IEmployeeService
    {
        [Dependency]
        public IDaoEmployee _employeeAdapter { get; set; }

        public List<EmployeeModel> GetAllEmployees(int schoolID)
        {
            return _employeeAdapter.GetAllEmployees(schoolID);
        }


        public IEnumerable<KeyValuePair<int, string>> GetAllDesignations()
        {
            return _employeeAdapter.GetAllDesignations();
        }


        public int CreateEmployee(EmployeeModel NewEmployee, int schoolID)
        {
            return _employeeAdapter.CreateEmployee(NewEmployee, schoolID);
        }


        public EmployeeModel GetEmployee(int schoolID,int EmployeeID)
        {
            return _employeeAdapter.GetEmployee(schoolID, EmployeeID);
        }


        public int UpdateEmployee(EmployeeModel NewEmployee, int schoolID)
        {
            return _employeeAdapter.UpdateEmployee(NewEmployee, schoolID);
        }


        public int DeleteEmployee(int schoolID,int EmployeeID = 0)
        {
            return _employeeAdapter.DeleteEmployee(EmployeeID, schoolID);
        }
    }
}
