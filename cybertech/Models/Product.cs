namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public virtual int ProductID { get; set; }

        public virtual int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public virtual string ProductName { get; set; }

        [Required]
        [StringLength(500)]
        public virtual string ProductDesc { get; set; }

        public virtual decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
