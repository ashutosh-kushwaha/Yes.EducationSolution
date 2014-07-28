using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Models
{
    public class LoggedInUserDetailsModel
    {
        public int UserID { get; set; }
        public int SchoolID { get; set; }
        public string UserName { get; set; }
        public string SchoolName { get; set; }
        public List<string> Privileges { get; set; }
    }
}
