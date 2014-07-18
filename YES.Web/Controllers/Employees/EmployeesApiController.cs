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

namespace YES.Web.Controllers
{
    [AttributeRouting.RoutePrefix("Api/Employee")]
    public class EmployeesApiController : ApiController
    {
        [Dependency]
        public IEmployeeService _employeeService { get; set; }

        [Dependency]
        public IStateDistrictService _stateDistrictService { get; set; }

        [AttributeRouting.Web.Mvc.Route("GetAllEmployees")]
        public List<EmployeeModel> GetAllEmployees()
        {
            return _employeeService.GetAllEmployees();
        }

        [AttributeRouting.Web.Mvc.Route("CreateEmployee")]
        public int CreateEmployee(EmployeeModel NewEmployee)
        {
            return 0;
        }

    }
}
