using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public class DaoSubject : IDaoSubject
    {
        public SubjectModel GetSubject(int subjectID)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var subject = context.YesSubjects.Where(c => c.SubjectID == subjectID && c.IsActive == true).FirstOrDefault();
                    SubjectModel sm = null;
                    if (subject != null)
                    {
                        sm = new SubjectModel();
                        sm.SubjectID = subject.SubjectID;
                        sm.SubjectName = subject.SubjectName;
                        sm.SubjectMarks = subject.SubjectMarks;
                    }
                    return sm;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public bool CreateSubject(Models.SubjectModel subject)
        {
            throw new NotImplementedException();
        }

        public bool DeleteSubject(int subjectID)
        {
            throw new NotImplementedException();
        }

        public bool UpdateSubject(SubjectModel subject)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<SubjectModel> GetAllSubjects()
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var subjects = context.YesSubjects.Where(c => c.IsActive == true).ToList();
                    List<SubjectModel> subjectList = null;
                    if (subjects != null)
                    {
                        subjectList = new List<SubjectModel>();
                        foreach (var subject in subjects)
                        {
                            SubjectModel sm = new SubjectModel();
                            sm.SubjectID = subject.SubjectID;
                            sm.SubjectName = subject.SubjectName;
                            sm.SubjectMarks = subject.SubjectMarks;
                            subjectList.Add(sm);
                        }

                    }
                    return subjectList;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
