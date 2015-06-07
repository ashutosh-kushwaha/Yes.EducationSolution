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
        SubjectModel GetSubject(int subjectID);
        bool CreateSubject(SubjectModel subject,int schoolId);
        bool DeleteSubject(int subjectID);
        bool UpdateSubject(SubjectModel subject);
        IEnumerable<SubjectModel> GetAllSubjects();
    }
}
