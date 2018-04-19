namespace LTMS.Models.Lotteries
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Token
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int TokenId { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int UserId { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(250)]
        public string AuthToken { get; set; }

        [Key]
        [Column(Order = 3)]
        public DateTime IssuedOn { get; set; }

        [Key]
        [Column(Order = 4)]
        public DateTime ExpiresOn { get; set; }
    }
}
