using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;
using Yes.DataAdaptder;
namespace Yes.Service
{
    public class CourseService : ICourseService
    {
        [Dependency]
        public IDaoCourse _courseAdapter { get; set; }

        public IEnumerable<CourseModel> GetAllCourse()
        {
            return _courseAdapter.GetAllCourse();
        }
    }
}
