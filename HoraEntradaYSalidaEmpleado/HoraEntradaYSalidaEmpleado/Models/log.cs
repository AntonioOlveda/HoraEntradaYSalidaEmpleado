namespace HoraEntradaYSalidaEmpleado
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("log")]
    public partial class log
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idEmpleado { get; set; }

        [Key]
        [Column(Order = 1)]
        public DateTime fhe { get; set; }

        [Key]
        [Column(Order = 2)]
        public DateTime fhs { get; set; }
    }
}
