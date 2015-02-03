using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public interface IDaoSubject
    {
        SubjectModel GetSubject(int subjectID);
       bool CreateSubject(SubjectModel subject);
       bool DeleteSubject(int subjectID);
       bool UpdateSubject(SubjectModel subject);
       IEnumerable<SubjectModel> GetAllSubjects();
    }
}
