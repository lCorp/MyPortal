using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Error(string id)
        {
            string customErrorTitle = string.Empty;
            string customErrorMessage = string.Empty;

            if (id == "404")
            {
                customErrorTitle = "404";
                customErrorMessage = "Page not found!";
            }

            ViewBag.CustomErrorTitle = customErrorTitle;
            ViewBag.CustomErrorMessage = customErrorMessage;
            return View("Error");
        }
    }
}