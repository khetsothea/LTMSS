namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

   [Table("ViewAgency")]
    public partial class ViewAgency
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "កូនក្រដាស់")]
        public int AgencyID { get; set; }

        [StringLength(500)]
        [Display(Name = "ឈ្មោះពិត")]
        public string AgencyName { get; set; }

        [StringLength(500)]
        [Display(Name = "ឈ្មោះហៅ​")]
        public string AgencyNickname { get; set; }

        [StringLength(1)]
        [Display(Name = "ភេទ")]
        public string GenderID { get; set; }

        [StringLength(12)]
        [Display(Name = "លេខទូរស័ព្ទ")]
        public string PhoneNumber { get; set; }

        [StringLength(250)]
        [Display(Name = "អាសយដ្ឋាន")]
        public string Address { get; set; }

        [Display(Name = "ប្រើ")]
        public int? StatusID { get; set; }

        [Display(Name = "លប់")]
        public bool? IsDeleted { get; set; }

        [StringLength(5)]
        public string GenderDesc { get; set; }

        [StringLength(50)]
        public string StatusDisc { get; set; }
    }
}
