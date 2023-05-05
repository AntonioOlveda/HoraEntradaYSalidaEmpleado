using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;

namespace HoraEntradaYSalidaEmpleado
{
    public partial class ABC : System.Web.UI.Page
    {
        static string conexionstring = @"server = DESKTOP-VUA03E7\SQLEXPRESS ; database= Empleados; integrated security= true";
        SqlConnection conexion = new SqlConnection(conexionstring);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void consulta()
        {
            string query = "select * from empleados";
            SqlCommand comando = new SqlCommand(query, conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        protected void buttonGuardar_Click(object sender, EventArgs e)
        {
            conexion.Open();

            
            string cadena = "insert into empleados ([nombre], [idDepartamento]) values ('" + txBoxNombre.Text + "', " + txBoxIDD.Text + ")";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteNonQuery();

            MessageBox.Show("La persona: " + txBoxNombre.Text + " se ha agregado correctamente");
        
            txBoxNombre.Text = "";
            txBoxIDE.Text = "";
            txBoxIDD.Text = "";
   
            consulta();
            conexion.Close();
        }

        protected void buttonEliminar_Click(object sender, EventArgs e)
        {
            int flag = 0;
            conexion.Open();
            string cadena = "delete from empleados where convert(varchar, idEmpleado) = '"+txBoxIDE.Text+"'";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            flag = comando.ExecuteNonQuery();

            if (flag == 1)
                MessageBox.Show("La persona: " + txBoxNombre.Text + " se ha eliminado correctamente");
            else
                MessageBox.Show("La persona: " + txBoxNombre.Text + " no se encuentra en la base de datos");

            txBoxNombre.Text = "";
            txBoxIDE.Text = "";
            txBoxIDD.Text = "";

            consulta();

            conexion.Close();
        }

        protected void buttonConsulta_Click(object sender, EventArgs e)
        {
            conexion.Open();
            consulta();
            conexion.Close();
        }


        /*protected void buttonConectarBDClick(object sender, EventArgs e)
        {
            conexion.Open();
            MessageBox.Show("La conexion a la BD: " + conexion.Database + " ha sido exitoxa");
        }

        protected void buttonDesconectarBDClick(object sender, EventArgs e)
        {
            conexion.Close();
            MessageBox.Show("Se ha desconectado correctamente");
        }*/
    }
}