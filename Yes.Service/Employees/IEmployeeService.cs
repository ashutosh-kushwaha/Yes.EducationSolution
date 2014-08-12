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
        List<EmployeeModel> GetAllEmployees(int schoolID);
        IEnumerable<KeyValuePair<int, string>> GetAllDesignations();
        int CreateEmployee(EmployeeModel NewEmployee, int schoolID);
        EmployeeModel GetEmployee(int schoolID,int EmployeeID);
        int UpdateEmployee(EmployeeModel NewEmployee, int schoolID);
        int DeleteEmployee(int schoolID,int EmployeeID = 0);
    }
}
