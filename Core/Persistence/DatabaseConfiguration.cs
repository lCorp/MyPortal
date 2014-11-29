using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;

using Core.Models;

namespace Core.Persistence
{
    public class DatabaseConfiguration : DbMigrationsConfiguration<DatabaseContext>
    {
        public DatabaseConfiguration()
        {
            AutomaticMigrationsEnabled = true;
            AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(DatabaseContext context)
        {
            //Insert initial data

            base.Seed(context);
        }
    }
}