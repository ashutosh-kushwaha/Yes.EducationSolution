using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;
using Yes.DataAdaptder;
namespace Yes.Service
{
    public class StudentService : IStudentService
    {
        [Dependency]
        public IDaoStudent _studentDataAdapter { get; set; }
        public IEnumerable<StudentModel> GetAllStudents(int SchoolID)
        {
            return _studentDataAdapter.GetAllStudents(SchoolID);
        }
    }
}
