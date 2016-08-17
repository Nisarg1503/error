namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabletAssec")]
    public partial class TabletAssec
    {
        public int TabletAssecID { get; set; }

        public int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public string TabletAssecName { get; set; }

        [Required]
        [StringLength(500)]
        public string TabletAssecDesc { get; set; }

        public decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
