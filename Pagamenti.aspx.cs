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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if(!IsPostBack)
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["EdilDB"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select * from Pagamenti";
                    cmd.Connection = con;
                    SqlDataReader reader = cmd.ExecuteReader();
                    List<Pagamenti> ListaPagamenti = new List<Pagamenti>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Pagamenti p = new Pagamenti();
                            p.Dal = Convert.ToDateTime(reader["Dal"]);
                            p.Al = Convert.ToDateTime(reader["Al"]);
                            p.Importo = Convert.ToInt32(reader["Importo"]);
                            p.TipoRemunerazione = reader["TipoRemunerazione"].ToString();
                            p.IDDipendente = Convert.ToInt32(reader["IDDipendente"]);
                            ListaPagamenti.Add(p);
                        }
                    }
                    GridView2.DataSource = ListaPagamenti;
                    GridView2.DataBind();
                    con.Close();
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void RegistraPagamento_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EdilDB"].ToString();
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "insert into Pagamenti values (@dal, @al, @importo, @remunerazione, @idDipendente)";
                cmd.Parameters.AddWithValue("dal", Dal.Value);
                cmd.Parameters.AddWithValue("al", Al.Value);
                cmd.Parameters.AddWithValue("importo", Importo.Text);
                cmd.Parameters.AddWithValue("remunerazione", Remunerazione.Text);
                cmd.Parameters.AddWithValue("iddipendente", Dipendente.Text);
             

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }
    }
}