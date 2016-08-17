namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PrintandScan")]
    public partial class PrintandScan
    {
        [Key]
        public int PSID { get; set; }

        public int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public string PSName { get; set; }

        [Required]
        [StringLength(500)]
        public string PSDesc { get; set; }

        public decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
