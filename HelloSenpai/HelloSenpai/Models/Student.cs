using System;
using System.Collections.Generic;

#nullable disable

namespace HelloSenpai.Models
{
    public partial class Student
    {
        public Student()
        {
            Courses = new HashSet<Course>();
        }

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }

        public virtual ICollection<Course> Courses { get; set; }
    }
}
