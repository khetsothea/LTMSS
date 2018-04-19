namespace LTMS.Models.Lotteries
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using ViewModels;
    public partial class LottieModels : DbContext
    {
        public LottieModels()
            : base("name=LottieConn")
        {
        }

        public virtual DbSet<tblCommission> tblCommissions { get; set; }
        public virtual DbSet<AgencyCommission> AgencyCommission { get; set; }
        public virtual DbSet<tblShift> tblShifts { get; set; }

        public virtual DbSet<tblPlay> tblPlays { get; set; }

        public virtual DbSet<Agency> Agencies { get; set; }
        public virtual DbSet<Token> Tokens { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<tblGender> tblGenders { get; set; }
        //View
        public virtual DbSet<tblStatus> Status { get; set; }
        public virtual DbSet<ViewAgency> ViewAgencys { get; set; }
        public virtual DbSet<ViewTopPlayamount> ViewTopPlayamounts { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tblCommission>()
                .Property(e => e.x2)
                .HasPrecision(18, 0);

            modelBuilder.Entity<tblCommission>()
                .Property(e => e.x3)
                .HasPrecision(18, 0);

            modelBuilder.Entity<tblPlay>()
                .Property(e => e.PlayAmount)
                .HasPrecision(18, 0);

        //Asociation

    }

        public System.Data.Entity.DbSet<LTMS.Models.Lotteries.tblResultSA> tblResultSAs { get; set; }
        public System.Data.Entity.DbSet<LTMS.Models.Lotteries.tblResultSE> tblResultSEs { get; set; }
    }
}
