namespace cybertech.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class CyberTechModel : DbContext
    {
        public CyberTechModel()
            : base("name=CyberTechConnection")
        {
        }

        public virtual DbSet<CompAssec> CompAssecs { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<MiceKeyboard> MiceKeyboards { get; set; }
        public virtual DbSet<PrintandScan> PrintandScans { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Software> Softwares { get; set; }
        public virtual DbSet<TabletAssec> TabletAssecs { get; set; }


        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }



        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CompAssec>()
                .Property(e => e.AssecName)
                .IsUnicode(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.Devices)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.MiceKeyboards)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.PrintandScans)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.Products)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.Softwares)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CompAssec>()
                .HasMany(e => e.TabletAssecs)
                .WithRequired(e => e.CompAssec)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Device>()
                .Property(e => e.DeviceName)
                .IsUnicode(false);

            modelBuilder.Entity<Device>()
                .Property(e => e.DeviceDesc)
                .IsUnicode(false);

            modelBuilder.Entity<Device>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);

            modelBuilder.Entity<MiceKeyboard>()
                .Property(e => e.MKName)
                .IsUnicode(false);

            modelBuilder.Entity<MiceKeyboard>()
                .Property(e => e.MKDesc)
                .IsUnicode(false);

            modelBuilder.Entity<MiceKeyboard>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);

            modelBuilder.Entity<PrintandScan>()
                .Property(e => e.PSName)
                .IsUnicode(false);

            modelBuilder.Entity<PrintandScan>()
                .Property(e => e.PSDesc)
                .IsUnicode(false);

            modelBuilder.Entity<PrintandScan>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Product>()
                .Property(e => e.ProductName)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.ProductDesc)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Software>()
                .Property(e => e.SoftwareName)
                .IsUnicode(false);

            modelBuilder.Entity<Software>()
                .Property(e => e.SoftwareDesc)
                .IsUnicode(false);

            modelBuilder.Entity<Software>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);

            modelBuilder.Entity<TabletAssec>()
                .Property(e => e.TabletAssecName)
                .IsUnicode(false);

            modelBuilder.Entity<TabletAssec>()
                .Property(e => e.TabletAssecDesc)
                .IsUnicode(false);

            modelBuilder.Entity<TabletAssec>()
                .Property(e => e.Price)
                .HasPrecision(6, 2);
        }
    }
}
