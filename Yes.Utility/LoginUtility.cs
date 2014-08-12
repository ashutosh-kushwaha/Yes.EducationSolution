using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Utility
{
    public static class LoginUtility
    {
        [Dependency]
        public ILoginService _loginService { get; set; }

        public static LoggedInUserDetailsModel GetloggedInUserDetails(string userID)
        {
            return null;
        }
    }
}
