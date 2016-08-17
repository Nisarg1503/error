namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Software")]
    public partial class Software
    {
        public int SoftwareID { get; set; }

        public int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public string SoftwareName { get; set; }

        [Required]
        [StringLength(500)]
        public string SoftwareDesc { get; set; }

        public decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
