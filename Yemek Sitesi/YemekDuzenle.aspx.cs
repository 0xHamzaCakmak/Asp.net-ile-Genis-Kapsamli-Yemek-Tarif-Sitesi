using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_yemekler where yemekid=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                bgl.Baglanti().Close();
                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.Baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "Kategoriad";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 where yemekid=@p5", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.Baglanti());
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //Günün yemeği için id ye göre belirleme

            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}