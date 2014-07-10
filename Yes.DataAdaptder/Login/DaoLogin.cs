using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
namespace Yes.DataAdaptder
{
    public class DaoLogin:IDaoLogin
    {
        public bool VerifyUserCredential(string userName, string password)
        {
            try
            {
                using (YesEntities context=new YesEntities())
                {
                    var user = context.YesUsers.Where(c => c.UserName == userName && c.UserPassword == password).Select(c => c).FirstOrDefault();
                    if (user != null)
                        return true;
                    else
                        return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
