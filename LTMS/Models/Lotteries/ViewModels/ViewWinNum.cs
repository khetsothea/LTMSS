namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public class ViewWinNum
    {
        public int PlayDID { get; set; }
        public int PlayID { get; set; }
        public string Post { get; set; }
        public string AgencyName { get; set; }
        public string Number { get; set; }
        public string RNumber1 { get; set; }
        public string RNumber2 { get; set; }
        public int? Win { get; set; }
        public double? PlayAmount { get; set; }
        public double? HCommission { get; set; }
        public double? HRepay { get; set; }

    }
}
