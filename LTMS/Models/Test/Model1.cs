namespace LTMS.Models.Test
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model116")
        {
        }

        public virtual DbSet<v_Plays> v_Plays { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<v_Plays>()
                .Property(e => e.Shift)
                .IsUnicode(false);

            modelBuilder.Entity<v_Plays>()
                .Property(e => e.Number)
                .IsFixedLength();

            modelBuilder.Entity<v_Plays>()
                .Property(e => e.Number1)
                .IsFixedLength();

            modelBuilder.Entity<v_Plays>()
                .Property(e => e.Lerng)
                .IsUnicode(false);
        }
    }
}
