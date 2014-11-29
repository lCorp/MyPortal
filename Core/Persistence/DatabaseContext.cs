using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

using Core.Models;

namespace Core.Persistence
{
    public class DatabaseContext : DbContext
    {
        public DbSet<Account> Accounts { get; set; }

        public DatabaseContext()
            : base(GlobalConfiguration.DEFAULT_CONNECTION_STRING)
        {

        }

        public DatabaseContext(string connectionName)
            : base(connectionName)
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            MigrateDatabaseToLatestVersion<DatabaseContext, DatabaseConfiguration> migrateDatabaseConfiguration = new MigrateDatabaseToLatestVersion<DatabaseContext, DatabaseConfiguration>();
            Database.SetInitializer(migrateDatabaseConfiguration);
            base.OnModelCreating(modelBuilder);
        }        
    }
}