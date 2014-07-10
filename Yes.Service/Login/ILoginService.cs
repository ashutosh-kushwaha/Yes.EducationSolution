using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Service
{
    public interface ILoginService
    {

        bool VerifyUserCredential(string userName, string password);
    }
}
