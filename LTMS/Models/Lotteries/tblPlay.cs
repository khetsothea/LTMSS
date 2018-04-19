namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblPlay
    {
        [Key]        public int PlayId { get; set; }        [Column(TypeName = "date")]        public DateTime? Date { get; set; }        public int? Shift { get; set; }        public int? Number { get; set; }        public int? Number1 { get; set; }        public int? PostId { get; set; }        public int? PostMultiplier { get; set; }        public int? PlayType { get; set; }        public decimal? PlayAmount { get; set; }        public int? Status { get; set; }        public bool? IsDeleted { get; set; }
    }
}
