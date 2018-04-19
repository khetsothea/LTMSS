namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ViewPlays
    {
        [Key]
        public int PlayID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? PlayDate { get; set; }

        [StringLength(1)]
        public string Shift { get; set; }

        public int? Session { get; set; }
        public int CustomerID { get; set; }

        [StringLength(500)]
        public string AgencyName { get; set; }

        public int CreaterID { get; set; }

        public string Post { get; set; }

        public int? PostMultiplier { get; set; }

        public int? PlayTypeMultiplier { get; set; }

        [StringLength(10)]
        public string Number { get; set; }

        [StringLength(10)]
        public string Number1 { get; set; }

        public int? NumIncrease { get; set; }

        public int? PlayType { get; set; }

        public double? PlayAmount { get; set; }

        public double? TotalAmount { get; set; }

        public double? SMPLayD { get; set; }
        public int Status { get; set; }

        public string Lerng { get; set; }
        public int? NumIncreaseDig { get; set; }
    }
}
