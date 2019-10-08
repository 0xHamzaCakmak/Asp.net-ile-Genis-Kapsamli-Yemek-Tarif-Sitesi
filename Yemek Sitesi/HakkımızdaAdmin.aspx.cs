using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_hakkimizda", bgl.Baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                bgl.Baglanti().Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.ExecuteNonQuery();
                bgl.Baglanti().Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}