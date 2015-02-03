using AttributeRouting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AttributeRouting.Web.Mvc;
namespace YES.Web.Controllers
{
    [Authorize]
    [RoutePrefix("Employees")]
   public class EmployeesController : Controller
    {
        //
        // GET: /Employees/
        [Route("")]
        public ViewResult Index()
        {
            return View();
        }

    }
}
