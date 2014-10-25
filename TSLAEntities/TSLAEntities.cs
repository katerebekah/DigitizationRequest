namespace TSLAEntities
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TSLAEntities : DbContext
    {
        public TSLAEntities()
            : base("name=TSLAEntities")
        {
        }

        public virtual DbSet<Collection> Collections { get; set; }
        public virtual DbSet<FileFormat> FileFormats { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Scan> Scans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Collection>()
                .Property(e => e.AccessionNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Collection>()
                .Property(e => e.FindAID)
                .IsUnicode(false);

            modelBuilder.Entity<Collection>()
                .Property(e => e.Location)
                .IsUnicode(false);

            modelBuilder.Entity<FileFormat>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<FileFormat>()
                .Property(e => e.FormatType)
                .IsUnicode(false);

            modelBuilder.Entity<Item>()
                .Property(e => e.LCSH)
                .IsUnicode(false);

            modelBuilder.Entity<Item>()
                .Property(e => e.TGM)
                .IsUnicode(false);

            modelBuilder.Entity<Item>()
                .Property(e => e.Location)
                .IsUnicode(false);

            modelBuilder.Entity<Item>()
                .HasMany(e => e.Scans)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Scan>()
                .Property(e => e.Name)
                .IsUnicode(false);
        }
    }
}
