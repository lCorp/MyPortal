using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Web.Controllers
{
    public class AccountController : Controller
    {
        [AllowAnonymous]
        public ActionResult LogOn()
        {
            return View();
        }
	}
}