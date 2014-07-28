using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public interface IDaoLogin
    {

        LoggedInUserDetailsModel VerifyUserCredential(string userName, string password);
    }
}
