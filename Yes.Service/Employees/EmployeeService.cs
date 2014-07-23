using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.DataAdaptder;
using Yes.Models;

namespace Yes.Service
{
    public class EmployeeService : IEmployeeService
    {
        [Dependency]
        public IDaoEmployee _employeeAdapter { get; set; }

        public List<EmployeeModel> GetAllEmployees()
        {
            return _employeeAdapter.GetAllEmployees();
        }


        public IEnumerable<KeyValuePair<int, string>> GetAllDesignations()
        {
            return _employeeAdapter.GetAllDesignations();
        }


        public int CreateEmployee(EmployeeModel NewEmployee)
        {
            return _employeeAdapter.CreateEmployee(NewEmployee);
        }
    }
}
