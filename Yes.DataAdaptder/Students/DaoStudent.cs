using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
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

        public int CreateStudent(StudentModel NewStudent, int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    using (TransactionScope scope = new TransactionScope()) // Making both the create in one transection so that if fail, the whole process should rollback
                    {
                        // Create parent record to the database
                        var parent = new YesParent();
                        parent.DistrictID = NewStudent.DistrictID;
                        parent.ParentAddress1 = NewStudent.ParentAddress1;
                        parent.ParentAddress2 = NewStudent.ParentAddress2;
                        parent.ParentAlternateMobileNo = NewStudent.ParentAlternateMobileNo;
                        parent.ParentCity = NewStudent.ParentCity;
                        parent.ParentEmailID = NewStudent.ParentEmailID;
                        parent.ParentFirstName = NewStudent.ParentFirstName;
                        parent.ParentLastName = NewStudent.ParentLastName;
                        parent.ParentMiddleName = NewStudent.ParentMiddleName;
                        parent.ParentMobileNo = NewStudent.ParentMobileNo;
                        parent.ParentOccupation = NewStudent.ParentOccupation;
                        parent.ParentPinCode = NewStudent.ParentPinCode;
                        parent.StateID = NewStudent.StateID;
                        context.YesParents.Add(parent);
                        context.SaveChanges();

                        // Create student record
                        var student = new YesStudent();
                        student.StudentID = NewStudent.StudentID;
                        student.CourseID = NewStudent.CourseID;
                        student.ParentID = parent.ParentID;
                        student.SchoolID = SchoolID;
                        student.StudentDOB = NewStudent.StudentDateOfBirth;
                        student.StudentFirstName = NewStudent.StudentFirstName;
                        student.StudentMiddleName = NewStudent.StudentMiddleName;
                        student.StudentLastName = NewStudent.StudentLastName;
                        student.StudentGender = NewStudent.StudentGender.ToString();
                        student.StudentRollNumber = NewStudent.StudentRollNumber;
                        context.YesStudents.Add(student);
                        context.SaveChanges();
                        scope.Complete();// Commit the transection
                        return student.StudentID;
                    }
                  
                }
            }
            catch(Exception ex)
            {
                
                return 0;
            }
        }

        public StudentModel GetStudent(int SchoolID = 0, int StudentID = 0)
        {
            throw new NotImplementedException();
        }

        public int UpdateStudent(StudentModel NewStudent, int SchoolID = 0)
        {
            throw new NotImplementedException();
        }

        public int DeleteStudent(int SchoolID = 0, int StudentID = 0)
        {
            throw new NotImplementedException();
        }
    }
}
