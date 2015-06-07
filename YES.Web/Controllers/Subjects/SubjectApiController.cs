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
    [AttributeRouting.RoutePrefix("api/Subjects")]
    public class SubjectApiController : ApiController
    {
        [Dependency]
        public ISubjectService _subjectService { get; set; }
        [Dependency]
        public ILoginService _loginService { get; set; }
      
        [AttributeRouting.Web.Mvc.Route("GetAllSubjects")]
        public IEnumerable<SubjectModel> GetAllSubjects()
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            return _subjectService.GetAllSubjects();
        }

        [AttributeRouting.Web.Mvc.Route("SaveSubjectDetails")]
        public bool SaveSubjectDetails(SubjectModel NewSubject)
        {
            LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
            // If ID is greater than zero it means this call is for update
            if (NewSubject.SubjectID > 0)
                return _subjectService.UpdateSubject(NewSubject);
            else
                return _subjectService.CreateSubject(NewSubject,1);
        }

        //[AttributeRouting.Web.Mvc.Route("GetStudent")]
        //public StudentModel GetStudent(int StudentID)
        //{
        //    LoggedInUserDetailsModel userDetails = _loginService.GetLoggedInUserDetails(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
        //    return _studentService.GetStudent(userDetails.SchoolID,StudentID);
        //}
    }
}