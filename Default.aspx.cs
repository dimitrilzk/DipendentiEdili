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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EdilDB"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Dipendenti";
                cmd.Connection = con;
                SqlDataReader reader = cmd.ExecuteReader();
                List<Dipendente> ListaDipendenti = new List<Dipendente>();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Dipendente d = new Dipendente();
                        d.Id = Convert.ToInt32(reader["IDDipiendente"]);
                        d.Nome = reader["Nome"].ToString();
                        d.Cognome = reader["Cognome"].ToString();
                        d.Indirizzo = reader["Indirizzo"].ToString();
                        d.CF = reader["CodiceFiscale"].ToString();
                        d.Sposato = Convert.ToBoolean(reader["Sposato"]);
                        d.Figli = Convert.ToInt32(reader["FigliCarico"]);
                        d.Mansione = reader["Mansione"].ToString();
                        ListaDipendenti.Add(d);
                    }
                }
                GridView1.DataSource = ListaDipendenti;
                GridView1.DataBind();
                con.Close();
            }
            catch(Exception ex)
            {

            }

            
        }
    }
}