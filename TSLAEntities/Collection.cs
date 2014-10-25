namespace TSLAEntities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Collection")]
    public partial class Collection
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(125)]
        public string Name { get; set; }

        [StringLength(15)]
        public string AccessionNumber { get; set; }

        [StringLength(255)]
        public string FindAID { get; set; }

        [StringLength(125)]
        public string Location { get; set; }
    }
}
