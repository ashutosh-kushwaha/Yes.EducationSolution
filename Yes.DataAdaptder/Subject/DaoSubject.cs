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
        /// <summary>
        /// 
        /// </summary>
        /// <param name="subject"></param>
        /// <returns></returns>
        public bool CreateSubject(Models.SubjectModel subject)
        {
            using (YesEntities context = new YesEntities())
            {
                var newsubject = new YesSubject();
                newsubject.SubjectName = subject.SubjectName;
                newsubject.SubjectMarks = subject.SubjectMarks;
                newsubject.IsActive = subject.IsActive;
                newsubject.CreatedDate=DateTime.Now;
                newsubject.ModifiedDate = DateTime.Now;
                context.YesSubjects.Add(newsubject);
                context.SaveChanges();
                if (newsubject.SubjectID > 0)
                    return true;
                else
                    return false;
            }
        }

        public bool DeleteSubject(int schoolID, int subjectID)
        {
            using (YesEntities context = new YesEntities())
            {
               var subject= context.YesSubjects.Where(c => c.SubjectID == subjectID).FirstOrDefault();
               subject.IsActive = false;
               context.SaveChanges();
               return true;
            }
        }

        public bool UpdateSubject(SubjectModel subject)
        {
            using (YesEntities context = new YesEntities())
            {
                var newSubject = context.YesSubjects.Where(x => x.SubjectID == subject.SubjectID).FirstOrDefault();
                if (newSubject != null)
                {
                    newSubject.SubjectName = subject.SubjectName;
                    newSubject.SubjectMarks = subject.SubjectMarks;
                    newSubject.IsActive = subject.IsActive;
                    newSubject.ModifiedDate = DateTime.Now;
                    context.SaveChanges();
                }
                return true;
            }
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
                            sm.IsActive = subject.IsActive;
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
