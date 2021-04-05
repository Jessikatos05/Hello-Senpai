using System;
using System.Collections.Generic;

#nullable disable

namespace HelloSenpai.Models
{
    public partial class Course
    {
        public Course()
        {
            Subjects = new HashSet<Subject>();
        }

        public int CourseId { get; set; }
        public int? UserId { get; set; }
        public string CourseName { get; set; }

        public virtual Student User { get; set; }
        public virtual ICollection<Subject> Subjects { get; set; }
    }
}
