using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.Service
{
    public interface ISubjectService
    {
        SubjectModel GetSubject(int SchoolID, int subjectID);
        bool CreateSubject(SubjectModel subject,int schoolId);
        bool DeleteSubject(int SchoolID, int subjectID);
        bool UpdateSubject(int SchoolID, SubjectModel subject);
        IEnumerable<SubjectModel> GetAllSubjects();
    }
}
