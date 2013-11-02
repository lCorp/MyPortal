using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyPortal.Controllers
{
    public class SharedController : BaseController
    {
        public ActionResult Error()
        {
            return View();
        }
    }
}
