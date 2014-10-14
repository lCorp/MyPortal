using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

using Core.Models;

namespace Core.Persistence
{
    public class DataContext : DbContext
    {
        public DataContext()
            : base(GlobalConfiguration.DEFAULT_CONNECTION_STRING)
        {

        }

        public DataContext(string connectionName)
            : base(connectionName)
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            MigrateDatabaseToLatestVersion<DataContext, DataConfiguration> migrateDatabaseConfiguration = new MigrateDatabaseToLatestVersion<DataContext, DataConfiguration>();
            Database.SetInitializer(migrateDatabaseConfiguration);
            base.OnModelCreating(modelBuilder);
        }
    }
}