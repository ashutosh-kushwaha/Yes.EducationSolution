using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public interface IDaoEmployee
    {
        List<EmployeeModel> GetAllEmployees(int SchoolID=0);
        int CreateEmployee(EmployeeModel NewEmployee, int SchoolID=0);
        IEnumerable<KeyValuePair<int, string>> GetAllDesignations();
       EmployeeModel GetEmployee(int SchoolID = 0,int EmployeeID=0);

    }
}
