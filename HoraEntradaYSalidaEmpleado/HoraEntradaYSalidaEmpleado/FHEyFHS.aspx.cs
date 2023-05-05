using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;

namespace HoraEntradaYSalidaEmpleado
{
    public partial class FHEyFHS : System.Web.UI.Page
    {

        static string conexionstring = @"server = DESKTOP-VUA03E7\SQLEXPRESS ; database= Empleados; integrated security= true";
        SqlConnection conexion = new SqlConnection(conexionstring);

        public void consulta()
        {
            string query = "select * from logES";
            SqlCommand comando = new SqlCommand(query, conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGHE_Click(object sender, EventArgs e)
        {
            conexion.Open();


            string cadena = "insert into logES ([idEmpleado], [fhe]) values ('" + txBoxIDE.Text + "', getdate())";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteNonQuery();


            txBoxIDE.Text = "";


            consulta();
            conexion.Close();
        }

        protected void buttonGHS_Click(object sender, EventArgs e)
        {
            conexion.Open();

            string cadena = "update logES set fhs = getdate() where convert(varchar, idEmpleado) = '" + txBoxIDE.Text + "'";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteNonQuery();

            txBoxIDE.Text = "";
            consulta();
            conexion.Close();
        }

        

        protected void buttonConsulta_Click(object sender, EventArgs e)
        {
            conexion.Open();
            consulta();
            conexion.Close();
        }
    }
}