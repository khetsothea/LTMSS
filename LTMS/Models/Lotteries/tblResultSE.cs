namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblResultSE")]
    public partial class tblResultSE
    {
        [Key]
        [Column(Order = 0)]
        public int ResultID { get; set; }


        public DateTime ResultDate { get; set; }

        public TimeSpan? ResultTime { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ShiftID { get; set; }

        [StringLength(2)]
        public string A1X2 { get; set; }

        [StringLength(2)]
        public string A2X2 { get; set; }

        [StringLength(2)]
        public string A3X2 { get; set; }

        [StringLength(2)]
        public string A4X2 { get; set; }

        [StringLength(2)]
        public string BX2 { get; set; }

        [StringLength(2)]
        public string CX2 { get; set; }

        [StringLength(2)]
        public string DX2 { get; set; }

        [StringLength(3)]
        public string LO1 { get; set; }

        [StringLength(3)]
        public string LO2 { get; set; }

        [StringLength(3)]
        public string LO3 { get; set; }

        [StringLength(3)]
        public string LO4 { get; set; }

        [StringLength(3)]
        public string LO5 { get; set; }

        [StringLength(3)]
        public string LO6 { get; set; }

        [StringLength(3)]
        public string LO7 { get; set; }

        [StringLength(3)]
        public string LO8 { get; set; }

        [StringLength(3)]
        public string LO9 { get; set; }

        [StringLength(3)]
        public string LO10 { get; set; }

        [StringLength(3)]
        public string LO11 { get; set; }

        [StringLength(3)]
        public string LO12 { get; set; }

        [StringLength(3)]
        public string LO13 { get; set; }

        [StringLength(3)]
        public string LO14 { get; set; }

        [StringLength(3)]
        public string LO15 { get; set; }

        [StringLength(3)]
        public string LO16 { get; set; }

        [StringLength(3)]
        public string LO17 { get; set; }

        [StringLength(3)]
        public string LO18 { get; set; }

        [StringLength(3)]
        public string LO19 { get; set; }

        [StringLength(3)]
        public string LO20 { get; set; }

        [StringLength(3)]
        public string LO21 { get; set; }

        [StringLength(3)]
        public string LO22 { get; set; }

        [StringLength(3)]
        public string LO23 { get; set; }

        [StringLength(3)]
        public string LO24 { get; set; }

        [StringLength(3)]
        public string LO25 { get; set; }

        public int? CreatedBy { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModefiedDate { get; set; }
    }
}
