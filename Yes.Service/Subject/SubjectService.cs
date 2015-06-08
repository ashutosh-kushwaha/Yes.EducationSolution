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
        public SubjectModel GetSubject(int schoolID,int subjectID)
        {
            return _subjectAdapter.GetSubject(subjectID);
        }

        public bool CreateSubject(SubjectModel subject,int schoolID)
        {
            return _subjectAdapter.CreateSubject(subject);
        }

        public bool DeleteSubject(int schoolID,int subjectID)
        {
            throw new NotImplementedException();
        }

        public bool UpdateSubject(int schoolID,SubjectModel subject)
        {
            return _subjectAdapter.UpdateSubject(subject);
        }


        public IEnumerable<SubjectModel> GetAllSubjects()
        {
            return _subjectAdapter.GetAllSubjects();
        }


    }
}
