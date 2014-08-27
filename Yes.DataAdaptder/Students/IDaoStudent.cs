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
        int CreateStudent(StudentModel NewStudent, int SchoolID = 0);
        StudentModel GetStudent(int SchoolID = 0, int StudentID = 0);
        int UpdateStudent(StudentModel NewStudent, int SchoolID = 0);
        int DeleteStudent(int SchoolID = 0, int StudentID = 0);
    }
}
