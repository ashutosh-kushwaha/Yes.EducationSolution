using AttributeRouting;
using AttributeRouting.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace YES.Web.Controllers.Employees
{
    [RoutePrefix("api/Employees")]
    public class EmployeesApiController : ApiController
    {
        
        [GET("GetAllEmployees")]
        public void GetAllEmployees()
        {
            
        }
    }
}
