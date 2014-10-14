using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class GlobalConfiguration
    {
        public static readonly string DEFAULT_CONNECTION_STRING = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public static readonly string WEBSITE_NAME = "myPortal";
    }
}