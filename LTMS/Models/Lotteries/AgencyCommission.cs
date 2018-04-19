namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AgencyCommission
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AgCMID { get; set; }

        public int AgencyID { get; set; }

        public int ShiftID { get; set; }

        public decimal S1X2 { get; set; }
        public decimal S1X3 { get; set; }
        public decimal S2X2 { get; set; }
        public decimal S2X3 { get; set; }

        public decimal RS1X2 { get; set; }
        public decimal RS1X3 { get; set; }
        public decimal RS2X2 { get; set; }
        public decimal RS2X3 { get; set; }

        public int? CreatedBy { get; set; }

        public int? ModifiedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? ModefiedDate { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
