namespace DBEntities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Scan")]
    public partial class Scan
    {
        public int ID { get; set; }

        [Required]
        [StringLength(125)]
        public string Name { get; set; }

        public int ItemID { get; set; }

        public virtual Item Item { get; set; }
    }
}
