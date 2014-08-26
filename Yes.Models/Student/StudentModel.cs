using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Models
{
    public class StudentModel:ParentModel
    {
        public int StudentID { get; set; }
        public string StudentFirstName { get; set; }
        public string StudentMiddleName { get; set; }
        public string StudentLastName { get; set; }
        public int StudentRollNumber { get; set; }
        public DateTime StudentDateOfBirth { get; set; }
        public Char StudentGender { get; set; }
        public string CourseName { get; set; }
        public int ParentID { get; set; }
        public int CourseID { get; set; }
        public int SchoolID { get; set; }

    }
}
