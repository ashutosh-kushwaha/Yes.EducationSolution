using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;
namespace Yes.DataAdaptder
{
    public class DaoLogin : IDaoLogin
    {
        public LoggedInUserDetailsModel VerifyUserCredential(string userName, string password)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var user = context.YesUsers.Where(c => c.UserName == userName && c.UserPassword == password).Select(c => new
                    {
                        EmployeeID = c.EmployeeID,
                        UserID = c.UserID,
                        UserName = c.UserName,
                        Privileges = c.YesUserPrivileges,
                        SchoolID = c.YesEmployee.YesSchool.SchoolID,
                        SchoolName = c.YesEmployee.YesSchool.SchoolName

                    }).FirstOrDefault();
                    if (user != null)
                    {
                        LoggedInUserDetailsModel userDetails=new LoggedInUserDetailsModel();
                       // userDetails.Privileges=user.Privileges.ToList<string>();
                        userDetails.SchoolID=user.SchoolID;
                        userDetails.SchoolName=user.SchoolName;
                        userDetails.UserID=user.UserID;
                        userDetails.UserName=user.UserName;

                        return userDetails;
                    }
                    else
                        return null;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
