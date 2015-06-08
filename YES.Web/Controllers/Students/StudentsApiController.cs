using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using Yes.Models;
using Yes.Service;
namespace YES.Web.Controllers
{
    [Authorize]
    [AttributeRouting.RoutePrefix("api/Students")]
    public class StudentsApiController : ApiController
    {
        [Dependency]
        public IStudentService _studentService { get; set; }
        [Dependency]
        public ILoginService _loginService { get; set; }

        [AttributeRouting.Web.Mvc.Route("GetAllStudents")]
        public IEnumerable<StudentModel> GetAllStudents()
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _studentService.GetAllStudents(userDetails.SchoolID);
        }

        [AttributeRouting.Web.Mvc.Route("CreateStudent")]
        public int CreateStudent(StudentModel NewStudent)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            // If ID is greater than zero it means this call is for update
            if (NewStudent.StudentID > 0)
                return _studentService.UpdateStudent(NewStudent, userDetails.SchoolID);
            else
                return _studentService.CreateStudent(NewStudent, userDetails.SchoolID);
        }

        [AttributeRouting.Web.Mvc.Route("GetStudent/{StudentID}")]
        public StudentModel GetStudent(int StudentID)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _studentService.GetStudent(userDetails.SchoolID,StudentID);
        }
    }
}
