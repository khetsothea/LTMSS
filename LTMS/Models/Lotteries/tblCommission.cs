namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblCommission")]
    public partial class tblCommission
    {
        [Key]
        public int CommId { get; set; }
        [Display(Name = "ShiftId", ResourceType = typeof(LTMS.Languages.Commissions))]
        public int? ShiftId { get; set; }
        [Display(Name = "x2", ResourceType = typeof(LTMS.Languages.Commissions))]
        public decimal? x2 { get; set; }

        [Display(Name = "x3", ResourceType = typeof(LTMS.Languages.Commissions))]
        public decimal? x3 { get; set; }

        public int? status { get; set; }

        public bool? deleted { get; set; }

        // Navigation properties 
        public virtual tblShift tblShifts { get; set; }
        //public virtual ICollection<Instructor> Instructors { get; private set; }
    }
}