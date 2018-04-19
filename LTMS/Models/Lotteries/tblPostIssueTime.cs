namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblPostIssueTime
    {
        [Key]
        public int PostIssueTimeId { get; set; }

        public int? ShiftId { get; set; }

        public int? PostId { get; set; }

        [StringLength(5)]
        public string Mo { get; set; }

        [StringLength(5)]
        public string Tu { get; set; }

        [StringLength(5)]
        public string We { get; set; }

        [StringLength(5)]
        public string Th { get; set; }

        [StringLength(5)]
        public string Fr { get; set; }

        [StringLength(5)]
        public string Sa { get; set; }

        [StringLength(5)]
        public string Su { get; set; }

        public int? Stuatus { get; set; }

        public bool? Deleted { get; set; }
    }
}
