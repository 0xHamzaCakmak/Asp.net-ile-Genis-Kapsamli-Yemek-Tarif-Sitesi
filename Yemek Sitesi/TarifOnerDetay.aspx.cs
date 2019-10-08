using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                bgl.Baglanti().Close();

                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Kategoriad";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();


            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekad, yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}