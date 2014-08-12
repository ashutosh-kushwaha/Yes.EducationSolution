using AttributeRouting;
using AttributeRouting.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;

namespace YES.Web.Controllers
{
    [Authorize]
    [RoutePrefix("Course")]
    public class CourseController : Controller
    {
        //
        // GET: /Course/
        [Route("")]
        public ActionResult Index()
        {
            return View();
        }
    }
}
