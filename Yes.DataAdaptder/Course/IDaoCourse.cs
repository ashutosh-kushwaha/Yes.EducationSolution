﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.Models;
namespace Yes.DataAdaptder
{
    public interface IDaoCourse
    {
        IEnumerable<CourseModel> GetAllCourse();
        int CreateCourse(CourseModel course);

    }
}
