﻿namespace LTMS.Models.Lotteries.ViewModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public class ViewMPLay
    {
        public string PlayDate { get; set; }
        public int PlayDID { get; set; }
        public int Shift { get; set; }
        public int CustomerID { get; set; }
        public string AgencyName { get; set; }
        public int PlayID { get; set; }
        public string Post { get; set; }
        public string Number { get; set; }
        public double? PlayAmount { get; set; }
        public int? StatusID { get; set; }
        public int Digit { get; set; }

    }
}
