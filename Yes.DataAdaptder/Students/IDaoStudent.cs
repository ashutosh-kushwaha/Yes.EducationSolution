using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;
namespace Yes.DataAdaptder
{
    public interface IDaoStudent
    {
        IEnumerable<StudentModel> GetAllStudents(int SchoolID);
    }
}
