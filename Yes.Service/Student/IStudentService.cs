using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.Service
{
    public interface IStudentService
    {
        IEnumerable<StudentModel> GetAllStudents(int SchoolID);
        int CreateStudent(StudentModel NewStudent, int SchoolID);
        StudentModel GetStudent(int SchoolID, int StudentID);
        int UpdateStudent(StudentModel NewStudent, int SchoolID);
        int DeleteStudent(int SchoolID, int StudentID = 0);
    }
}
