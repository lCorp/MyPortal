using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyPortal.Utils
{
    public class Configuration
    {
        public static string WebsiteName
        {
            get
            {
                return GetAppSetting("WebsiteName");
            }
        }

        public static string StartYear
        {
            get
            {
                return GetAppSetting("StartYear");
            }
        }

        private static string GetAppSetting(string key)
        {
            return System.Configuration.ConfigurationManager.AppSettings[key];
        }
    }
}