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

        public int CreateStudent(StudentModel NewStudent, int SchoolID)
        {
            return _studentDataAdapter.CreateStudent(NewStudent, SchoolID);
        }

        public StudentModel GetStudent(int SchoolID, int StudentID)
        {
            throw new NotImplementedException();
        }

        public int UpdateStudent(StudentModel NewStudent, int SchoolID)
        {
            throw new NotImplementedException();
        }

        public int DeleteStudent(int SchoolID, int StudentID = 0)
        {
            throw new NotImplementedException();
        }
    }
}
