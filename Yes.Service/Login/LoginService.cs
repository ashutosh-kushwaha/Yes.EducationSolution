using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.Unity;
using Yes.DataAdaptder;
using Yes.Models;

namespace Yes.Service
{
    public class LoginService:ILoginService
    {
        [Dependency]
        public IDaoLogin _loginAdapter { get; set; }

        public LoggedInUserDetailsModel VerifyUserCredential(string userName, string password)
        {
            return _loginAdapter.VerifyUserCredential(userName, password);
        }
    }
}
