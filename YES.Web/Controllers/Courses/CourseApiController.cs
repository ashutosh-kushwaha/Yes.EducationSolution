using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Yes.Models;
using Yes.Service;
namespace YES.Web.Controllers
{
    [Authorize]
    [AttributeRouting.RoutePrefix("api/Course")]
    public class CourseApiController : ApiController
    {
        [Dependency]
        public ICourseService _courseService { get; set; }

        [AttributeRouting.Web.Mvc.Route("GetAllCourse")]
        public IEnumerable<CourseModel> GetAllCourse()
        {
            return _courseService.GetAllCourse();
        }

    }
}
