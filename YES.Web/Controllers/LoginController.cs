using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Yes.Service;

namespace YES.Web.Controllers
{
    public class LoginController : Controller
    {
        [Dependency]
        public ILoginService _loginService { get; set; }
        //
        // GET: /Login/
        
        public ActionResult Index()
        {
            FormsAuthentication.SignOut();
            return View();
        }
        public ActionResult Verify(string userid, string password)
        {
            bool status = _loginService.VerifyUserCredential(userid, password);
            FormsAuthentication.SetAuthCookie(userid, false);
            if (status)
               return RedirectToAction("Index", "Home");
            else
               return RedirectToAction("Index");
        }

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }
    }
}
