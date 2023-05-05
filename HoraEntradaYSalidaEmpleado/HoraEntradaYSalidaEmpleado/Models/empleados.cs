namespace HoraEntradaYSalidaEmpleado
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class empleados
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idEmpleado { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string nombre { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string apellidoMaterno { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string apellidoPaterno { get; set; }

        public int idDepartamento { get; set; }

        public virtual departamentos departamentos { get; set; }
    }
}
