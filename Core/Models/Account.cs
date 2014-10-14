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
        [Display(Name="Account")]
        public string AccountName { get; set; }

        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Email")]
        public string Email { get; set; }

        [NotMapped]
        [Display(Name = "Confirm Password")]
        public string ConfirmPassword { get; set; }
    }
}