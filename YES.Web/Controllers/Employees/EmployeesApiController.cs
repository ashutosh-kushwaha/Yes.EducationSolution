using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Yes.Models;
using Yes.Service;
using AttributeRouting;
using AttributeRouting.Web.Mvc;
using System.Web;

namespace YES.Web.Controllers
{
    [Authorize]
    [AttributeRouting.RoutePrefix("api/Employee")]
    public class EmployeesApiController : ApiController
    {
        [Dependency]
        public IEmployeeService _employeeService { get; set; }
        [Dependency]
        public ILoginService _loginService { get; set; }
        [Dependency]
        public IStateDistrictService _stateDistrictService { get; set; }

        [AttributeRouting.Web.Mvc.Route("GetAllEmployees")]
        public List<EmployeeModel> GetAllEmployees()
        {
            LoggedInUserDetailsModel userDetails= _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _employeeService.GetAllEmployees(userDetails.SchoolID);
        }

        [AttributeRouting.Web.Mvc.Route("CreateEmployee")]
        public int CreateEmployee(EmployeeModel NewEmployee)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            // If ID is greater than zero it means this call is for update
            if (NewEmployee.ID > 0)
                return _employeeService.UpdateEmployee(NewEmployee, userDetails.SchoolID);
            else
                return _employeeService.CreateEmployee(NewEmployee, userDetails.SchoolID);
        }

        [AttributeRouting.Web.Mvc.Route("GetAllDesignations")]
        public IEnumerable<KeyValuePair<int, string>> GetAllDesignations()
        {
            return _employeeService.GetAllDesignations();
        }
        [AttributeRouting.Web.Mvc.Route("GetEmployee/{EmployeeID}")]
        public EmployeeModel GetEmployees(Int32 EmployeeID)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _employeeService.GetEmployee(userDetails.SchoolID,EmployeeID);
        }

        [AttributeRouting.Web.Mvc.Route("DeleteEmployee/{EmployeeID}")]
        public int GetDeleteEmployees(Int32 EmployeeID)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _employeeService.DeleteEmployee(userDetails.SchoolID,EmployeeID);
        }
    }
}
