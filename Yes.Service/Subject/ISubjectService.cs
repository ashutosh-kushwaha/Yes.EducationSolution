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
        bool CreateSubject(SubjectModel subject);
        bool DeleteSubject(int subjectID);
        bool UpdateSubject(int subjectID);
        IEnumerable<SubjectModel> GetAllSubjects();
    }
}
