﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Models
{
    public class SubjectModel
    {
        public int SubjectID { get; set; }
        public string SubjectName { get; set; }
        public short SubjectMarks { get; set; }
        public bool IsActive { get; set; }
    }
}
