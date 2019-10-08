using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string katid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            katid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler where kategoriid=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", katid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.Baglanti().Close();

        }
    }
}