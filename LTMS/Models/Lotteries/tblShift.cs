namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblShift
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ShiftId { get; set; }

        [StringLength(50)]
        [Display(Name = "Description")]
        public string ShiftDescription { get; set; }

        [StringLength(50)]
        [Display(Name = "Description KH")]
        public string ShiftDescriptionKh { get; set; }

        public TimeSpan? OpenTime { get; set; }

        public TimeSpan? CloseTime { get; set; }
        public virtual ICollection<tblCommission> tblCommissions { get; private set; }

    }
}
