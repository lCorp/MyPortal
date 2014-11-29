using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Models
{
    public class Account : BaseModel
    {
        public string AccountName { get; set; }

        public string LoginProvider { get; set; }

        public string ProviderKey { get; set; }

        public string Password { get; set; }

        [NotMapped]
        public string ConfirmPassword { get; set; }
    }
}