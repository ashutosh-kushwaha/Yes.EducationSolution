using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public class DaoStudent : IDaoStudent
    {
        public IEnumerable<StudentModel> GetAllStudents(int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var students = context.YesStudents.Select(c => c).ToList();
                    List<StudentModel> Students = null;
                    Students = new List<StudentModel>();
                    if (students != null)
                        foreach (var student in students)
                        {
                            var Student = new StudentModel();
                            Student.CourseID = student.YesCourse.CourseID;
                            Student.ParentFirstName = student.YesParent.ParentFirstName;
                            Student.ParentMiddleName = student.YesParent.ParentMiddleName;
                            Student.ParentLastName = student.YesParent.ParentLastName;
                            Student.ParentAddress1 = student.YesParent.ParentAddress1;
                            Student.ParentAddress2 = student.YesParent.ParentAddress2;
                            if (student.StudentDOB!=null)
                            Student.StudentDateOfBirth =(DateTime) student.StudentDOB;
                            Student.StudentGender = Convert.ToChar(student.StudentGender);
                            if (student.YesParent.ParentAlternateMobileNo!=null)
                            Student.ParentAlternateMobileNo =(long) student.YesParent.ParentAlternateMobileNo;
                            Student.ParentCity = student.YesParent.ParentCity;
                            if (student.YesParent.DistrictID != null)
                               Student.DistrictID = (int)student.YesParent.DistrictID;
                            Student.ParentEmailID = student.YesParent.ParentEmailID;
                            Student.StudentFirstName = student.StudentFirstName;
                            Student.StudentID = student.StudentID;
                            Student.StudentLastName = student.StudentLastName;
                            Student.StudentMiddleName = student.StudentMiddleName;
                            if (student.YesParent.ParentPinCode!=null)
                            Student.ParentPinCode = (int)student.YesParent.ParentPinCode;
                            Student.StateID = (int)student.YesParent.StateID;
                            Student.CourseName = student.YesCourse.CourseName;
                            Student.StudentRollNumber = student.StudentRollNumber;
                          
                            Students.Add(Student);
                        }
                    return Students;
                }
            }

            catch (Exception ex)
            {
                return null;
            }
        }

        
    }
}
