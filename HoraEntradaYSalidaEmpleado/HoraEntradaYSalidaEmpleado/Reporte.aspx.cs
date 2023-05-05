using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows;
using System.Web.UI.WebControls;
using System.Windows.Controls;

namespace HoraEntradaYSalidaEmpleado
{
    public partial class Reporte : System.Web.UI.Page
    {
        static string conexionstring = @"server = DESKTOP-VUA03E7\SQLEXPRESS ; database= Empleados; integrated security= true";
        SqlConnection conexion = new SqlConnection(conexionstring);

        public void consulta()
        {
            string query = "select fhe as fechaYHoraDeEntrada, fhs as fechaYHoraDeSalida\nfrom logES\nwhere convert(varchar, idEmpleado) = '"+txBoxIDE.Text+"'";
            SqlCommand comando = new SqlCommand(query, conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        public string buscarNombre()
        {
            string nombre;
            string query = "select nombre\nfrom empleados\nwhere convert(varchar, idEmpleado) = '" + txBoxIDE.Text + "'";
            SqlCommand comando = new SqlCommand(query, conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            nombre = Convert.ToString(tabla.Rows[0][0]);
            return nombre;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGR_Click(object sender, EventArgs e)
        {
            conexion.Open();
            MessageBox.Show("Se muestran las fechas y horas de salidas del empleado " + buscarNombre() + ".");
            consulta();
            conexion.Close();
        }
    }
}