namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MiceKeyboard")]
    public partial class MiceKeyboard
    {
        [Key]
        public int MKID { get; set; }

        public int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public string MKName { get; set; }

        [Required]
        [StringLength(500)]
        public string MKDesc { get; set; }

        public decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
