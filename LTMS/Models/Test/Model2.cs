namespace LTMS.Models.Test
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model2 : DbContext
    {
        public Model2()
            : base("name=Model23")
        {
        }

        public virtual DbSet<v_PlayDetail> v_PlayDetail { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<v_PlayDetail>()
                .Property(e => e.Shift)
                .IsUnicode(false);

            modelBuilder.Entity<v_PlayDetail>()
                .Property(e => e.Number)
                .IsFixedLength();
        }
    }
}
