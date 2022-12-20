using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DipendentiEdili
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistraDipendnete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EdilDB"].ToString();
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "insert into Dipendenti values (@nome, @cognome, @indirizzo, @cf, @sposato, @figli, @mansione)";
                cmd.Parameters.AddWithValue("nome", Nome.Text);
                cmd.Parameters.AddWithValue("cognome", Cognome.Text);
                cmd.Parameters.AddWithValue("indirizzo", Indirizzo.Text);
                cmd.Parameters.AddWithValue("cf", CF.Text);
                cmd.Parameters.AddWithValue("sposato", Convert.ToBoolean(Sposato.Checked));
                cmd.Parameters.AddWithValue("figli", Convert.ToInt32(Figli.Text));
                cmd.Parameters.AddWithValue("mansione", Mansione.Text);

                cmd.ExecuteNonQuery();
                con.Close();
            }catch(Exception ex)
            {
                con.Close();
            }
        }
    }
}