﻿using AttributeRouting;
using AttributeRouting.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YES.Web.Controllers
{
    [Authorize]
    [RoutePrefix("Subject")]
    public class SubjectController : Controller
    {
        [Route("")]
        public ActionResult Index()
        {
            return View();
        }
    }
}