using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.DataAdaptder;
using Yes.Models;

namespace Yes.Service
{
   public class SubjectService:ISubjectService
    {
       [Dependency]
       public IDaoSubject _subjectAdapter { get; set; }
        public SubjectModel GetSubject(int subjectID)
        {
            throw new NotImplementedException();
        }

        public bool CreateSubject(SubjectModel subject)
        {
            throw new NotImplementedException();
        }

        public bool DeleteSubject(int subjectID)
        {
            throw new NotImplementedException();
        }

        public bool UpdateSubject(int subjectID)
        {
            throw new NotImplementedException();
        }


        public IEnumerable<SubjectModel> GetAllSubjects()
        {
            return _subjectAdapter.GetAllSubjects();
        }
    }
}
