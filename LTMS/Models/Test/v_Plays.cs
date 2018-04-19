namespace LTMS.Models.Test
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class v_Plays
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PlayID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? PlayDate { get; set; }

        [StringLength(1)]
        public string Shift { get; set; }

        public int? Session { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CustomerID { get; set; }

        [StringLength(500)]
        public string AgencyName { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CreaterID { get; set; }

        [StringLength(10)]
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

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Status { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(5)]
        public string Lerng { get; set; }

        public int? NumIncreaseDig { get; set; }
    }
}
