namespace TSLAEntities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Item")]
    public partial class Item
    {
        public Item()
        {
            Scans = new HashSet<Scan>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(125)]
        public string Title { get; set; }

        [StringLength(125)]
        public string LCSH { get; set; }

        [StringLength(125)]
        public string TGM { get; set; }

        public string Description { get; set; }

        [StringLength(500)]
        public string HistoricalNote { get; set; }

        public DateTime? OriginDate { get; set; }

        [StringLength(125)]
        public string Publisher { get; set; }

        [StringLength(125)]
        public string PlacePublished { get; set; }

        public DateTime? DatePublished { get; set; }

        [StringLength(125)]
        public string Creator { get; set; }

        [StringLength(50)]
        public string NegativeNumber { get; set; }

        [StringLength(50)]
        public string Location { get; set; }

        public int? FileFormatID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public int? UpdaterID { get; set; }

        public int? MetadataCreatorID { get; set; }

        public int? CollectionID { get; set; }

        public virtual ICollection<Scan> Scans { get; set; }
    }
}
