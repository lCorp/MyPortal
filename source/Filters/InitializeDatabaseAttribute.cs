using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Threading;
using System.Web.Mvc;
using WebMatrix.WebData;
using MyPortal.Models;

namespace MyPortal.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = false, Inherited = true)]
    public sealed class InitializeDatabaseAttribute : ActionFilterAttribute
    {
        private static DatabaseInitializer _initializer;
        private static object _initializerLock = new object();
        private static bool _isInitialized;

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            // Ensure the database is initialized only once per app start
            LazyInitializer.EnsureInitialized(ref _initializer, ref _isInitialized, ref _initializerLock);
        }

        private class DatabaseInitializer
        {
            public DatabaseInitializer()
            {
                Database.SetInitializer<MyPortalContext>(null);
                try
                {
                    using (var context = new MyPortalContext())
                    {
                        if (!context.Database.Exists())
                        {
                            // Create the database without Entity Framework migration schema
                            ((IObjectContextAdapter)context).ObjectContext.CreateDatabase();
                        }
                        WebSecurity.InitializeDatabaseConnection("DefaultConnection", "UserProfile", "UserId", "UserName", autoCreateTables: true);
                    }
                }
                catch (Exception ex)
                {
                    throw new InvalidOperationException("Database could not be initialized.", ex);
                }
            }
        }
    }
}
