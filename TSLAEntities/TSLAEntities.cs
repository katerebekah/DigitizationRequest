namespace DBEntities
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using Microsoft.AspNet.Identity.EntityFramework;

    public partial class TSLAEntities : IdentityDbContext<User>
    {
        public TSLAEntities()
            : base("name=TSLAEntities")
        {
        }
        public static TSLAEntities Create()
        {
            return new TSLAEntities();
        }

        public virtual DbSet<Collection> Collections { get; set; }
        public virtual DbSet<FileFormat> FileFormats { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Scan> Scans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Item>()
                .HasMany(e => e.Scans)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete(false);
        }
    }
}
