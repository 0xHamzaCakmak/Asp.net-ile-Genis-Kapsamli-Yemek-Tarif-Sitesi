using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

           
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Kategoriad";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            SqlCommand komut = new SqlCommand("select * from tbl_yemekler", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("delete from tbl_yemekler where yemekid=@p1", bgl.Baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnKatEKle_Click(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlCommand komut = new SqlCommand("insert into tbl_yemekler(yemekad,yemekmalzeme,yemektarif,kategoriid) values(@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            //kategorı sayısı arttırma

            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@u1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@u1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();

        }
    }
}