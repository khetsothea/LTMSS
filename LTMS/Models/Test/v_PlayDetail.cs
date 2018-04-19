namespace LTMS.Models.Test
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class v_PlayDetail
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

        public double? HCommission { get; set; }

        public double? HRepay { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CustomerID { get; set; }

        [StringLength(500)]
        public string AgencyName { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PlayDID { get; set; }

        [StringLength(50)]
        public string Post { get; set; }

        [StringLength(10)]
        public string Number { get; set; }

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Digit { get; set; }

        public double? PlayAmount { get; set; }

        public int? isWin { get; set; }

        public int? StatusID { get; set; }
    }
}
