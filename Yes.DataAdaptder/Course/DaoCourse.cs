using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public class DaoCourse:IDaoCourse
    {
        /// <summary>
        /// Get all the course in DB
        /// </summary>
        /// <returns>List of course</returns>
        public IEnumerable<CourseModel> GetAllCourse()
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    List<CourseModel> CourseList = new List<CourseModel>();
                    var courses = context.YesCourses.ToList();
                    foreach (var item in courses)
                    {
                        CourseModel course = new CourseModel();
                        course.CourseID = item.CourseID;
                        course.CourseDescriptions = item.CourseDescription;
                        course.CourseName = item.CourseName;
                        CourseList.Add(course);
                    }
                    return CourseList;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public int CreateCourse(CourseModel course)
        {
            throw new NotImplementedException();
        }
    }
}
