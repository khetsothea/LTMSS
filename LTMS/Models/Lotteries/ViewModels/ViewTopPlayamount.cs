namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TopPlayamount")]
    public partial class ViewTopPlayamount
    {
        [Key]
        public DateTime PlayDate { get; set; }
        public double SPlayAmount { get; set; }
        public string Number { get; set; }
        public string Post { get; set; }
    }
}
