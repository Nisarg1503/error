namespace cybertech.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Device
    {
        public int DeviceID { get; set; }

        public int AssecID { get; set; }

        [Required]
        [StringLength(150)]
        public string DeviceName { get; set; }

        [Required]
        [StringLength(500)]
        public string DeviceDesc { get; set; }

        public decimal Price { get; set; }

        public virtual CompAssec CompAssec { get; set; }
    }
}
