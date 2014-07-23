using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.Service
{
    public interface IEmployeeService
    {
        List<EmployeeModel> GetAllEmployees();
        IEnumerable<KeyValuePair<int, string>> GetAllDesignations();
        int CreateEmployee(EmployeeModel NewEmployee);
    }
}
