using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace HoraEntradaYSalidaEmpleado
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<departamentos> departamentos { get; set; }
        public virtual DbSet<empleados> empleados { get; set; }
        public virtual DbSet<log> log { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<departamentos>()
                .Property(e => e.nombreDepartamento)
                .IsUnicode(false);

            modelBuilder.Entity<departamentos>()
                .HasMany(e => e.empleados)
                .WithRequired(e => e.departamentos)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<empleados>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<empleados>()
                .Property(e => e.apellidoMaterno)
                .IsUnicode(false);

            modelBuilder.Entity<empleados>()
                .Property(e => e.apellidoPaterno)
                .IsUnicode(false);
        }
    }
}
