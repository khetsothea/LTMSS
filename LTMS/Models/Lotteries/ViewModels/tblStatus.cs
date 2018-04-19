using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LTMS.Models.Lotteries.ViewModels
{
    public class tblStatus
    {
        [Key]
        public int StatusID { get; set; }
        public string StatusDisc { get; set; }
    }
}