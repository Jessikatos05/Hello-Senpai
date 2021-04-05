using System;
using System.Collections.Generic;

#nullable disable

namespace HelloSenpai.Models
{
    public partial class Subject
    {
        public Subject()
        {
            Lectures = new HashSet<Lecture>();
        }

        public int? CourseId { get; set; }
        public int SubJectId { get; set; }
        public string SubjectName { get; set; }

        public virtual Course Course { get; set; }
        public virtual ICollection<Lecture> Lectures { get; set; }
    }
}
