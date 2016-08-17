using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cybertech.Models
{
    public class OrderDetail
    {
        public virtual int OrderDetailId { get; set; }
        public virtual int OrderId { get; set; }
        public virtual Order Order { get; set; }
        public virtual int ProductID { get; set; }
        public virtual Product Product { get; set; }
        public virtual int Quantity { get; set; }
        public virtual decimal UnitPrice { get; set; }
    }
}