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
    public partial class ABCDepartamento : System.Web.UI.Page
    {

        static string conexionstring = @"server = DESKTOP-VUA03E7\SQLEXPRESS ; database= Empleados; integrated security= true";
        SqlConnection conexion = new SqlConnection(conexionstring);

        public void consulta()
        {
            string query = "select * from departamentos";
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

        protected void buttonGuardar_Click(object sender, EventArgs e)
        {
            conexion.Open();


            string cadena = "insert into departamentos ([nombre]) values ('" + txBoxNombre.Text + "')";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteNonQuery();

            MessageBox.Show("La persona: " + txBoxNombre.Text + " se ha agregado correctamente");

            txBoxNombre.Text = "";

            consulta();
            conexion.Close();
        }

        protected void buttonEliminar_Click(object sender, EventArgs e)
        {
            int flag = 0;
            conexion.Open();
            string cadena = "delete from departamentos where convert(varchar, idDepartamento) = '" + txBoxIDD.Text + "'";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            flag = comando.ExecuteNonQuery();

            if (flag == 1)
                MessageBox.Show("El departamento: " + txBoxIDD.Text + " se ha eliminado correctamente");
            else
                MessageBox.Show("El departamento: " + txBoxIDD.Text + " no se encuentra en la base de datos");

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
    }
}