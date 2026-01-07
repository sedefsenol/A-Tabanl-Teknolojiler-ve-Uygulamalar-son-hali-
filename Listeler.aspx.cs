using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using Newtonsoft.Json.Linq;

namespace Cinescope
{
    public partial class Listeler : System.Web.UI.Page
    {
        string connStr = ConfigurationManager
            .ConnectionStrings["CineScopeDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
                Response.Redirect("Girisyap.aspx");

            if (!IsPostBack)
                ListeleriGetir();
        }

        void ListeleriGetir()
        {
            int kullaniciId = Convert.ToInt32(Session["KullaniciID"]);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter(@"
                    SELECT ID, ListeAdi, FilmlerJson
                    FROM Listeler
                    WHERE KullaniciID = @uid
                    ORDER BY Tarih DESC
                ", conn);

                da.SelectCommand.Parameters.AddWithValue("@uid", kullaniciId);

                DataTable dt = new DataTable();
                da.Fill(dt);

                rptListeler.DataSource = dt;
                rptListeler.DataBind();
            }
        }

       
        public string GetFilmPosters(string json)
        {
            if (string.IsNullOrEmpty(json))
                return "";

            StringBuilder sb = new StringBuilder();

            try
            {
                JArray films = JArray.Parse(json);
                int count = 0;

                foreach (var film in films)
                {
                    if (count >= 12)
                        break;

                    string poster = film["poster"]?.ToString();
                    if (!string.IsNullOrEmpty(poster))
                    {
                        sb.Append($@"
                            <img class='film-poster'
                                 src='https://image.tmdb.org/t/p/w200{poster}' />
                        ");
                        count++;
                    }
                }
            }
            catch
            {
                // JSON bozuksa patlamasın
            }

            return sb.ToString();
        }
    }
}
