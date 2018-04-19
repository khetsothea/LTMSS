namespace LTMS.Models.Lotteries.ViewModels
{
    using PagedList;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ViewAgencyCustom
    {
        public  ViewAgency ViewAgency = new ViewAgency();
        public List<ViewAgency> ListAgency = new List<ViewAgency>();
        public IEnumerable<AgencyCommission> AgencyCommissions { get; set; }
        public Agency vAgency = new Agency();
        public List<ViewAgency> GetListAgency()
        {
            List<ViewAgency> students = new List<ViewAgency>();
            return students;
        }

        public Object ListPage (int pageNumber =1, int pageSize = 10)
        {
            return ListAgency.ToPagedList(pageNumber, pageSize);
        }

    }
}
