namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblGender
    {
        [Key]
        public int GenderID { get; set; }

        [StringLength(5)]
        public string GenderDesc { get; set; }
    }
}
