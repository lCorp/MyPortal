﻿using System.Web;
using System.Web.Optimization;

namespace Web
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/js/bootstrap").Include(
                      "~/Content/js/bootstrap.min.js",
                      "~/Content/js/respond.min.js"));

            bundles.Add(new StyleBundle("~/css/bootstrap").Include(
                      "~/Content/css/bootstrap.min.css",
                      "~/Content/css/site.css"));
        }
    }
}