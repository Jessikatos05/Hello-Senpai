using System;
using System.Collections.Generic;

#nullable disable

namespace HelloSenpai.Models
{
    public partial class Lecture
    {
        public int? CourseId { get; set; }
        public int? SubJectId { get; set; }
        public int LectureId { get; set; }
        public string LectureName { get; set; }

        public virtual Subject SubJect { get; set; }
    }
}
