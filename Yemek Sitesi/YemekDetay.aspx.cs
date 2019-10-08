using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("select yemekad from tbl_yemekler where yemekid=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.Baglanti().Close();

            SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yemekid=@y1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@y1", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.Baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("insert into Tbl_yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,yemekid) values(@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

        }
    }
}