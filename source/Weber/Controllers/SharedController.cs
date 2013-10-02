using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace myTutor.Controllers
{
    public partial class SharedController : Controller
    {
        public ActionResult Error()
        {
            return View();
        }
    }
}
