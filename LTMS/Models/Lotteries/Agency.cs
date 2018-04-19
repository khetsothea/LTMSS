namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Agency
    {
        [Key]
        public int AgencyID { get; set; }

        [StringLength(500)]
        [Display(Name ="ឈ្មោះពិត")]
        public string AgencyName { get; set; }

        [StringLength(500)]
        [Display(Name = "ឈ្មោះហៅ")]
        public string AgencyNickname { get; set; }

        
        [Display(Name = "ភេទ")]
        public int? GenderID { get; set; }

        [StringLength(12)]
        [Display(Name = "លេខទូរស័ព្ទ")]
        public string PhoneNumber { get; set; }

        [StringLength(250)]
        [Display(Name = "អាសយដ្ឋាន")]
        public string Address { get; set; }

        [Display(Name = "ប្រើរ")]
        public int? StatusID { get; set; }

        public bool? IsDeleted { get; set; }
    }
}
