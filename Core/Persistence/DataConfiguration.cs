using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;

using Core.Models;

namespace Core.Persistence
{
    public class DataConfiguration : DbMigrationsConfiguration<DataContext>
    {
        public DataConfiguration()
        {
            AutomaticMigrationsEnabled = true;
            AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(DataContext context)
        {
            //Insert initial data

            base.Seed(context);
        }
    }
}