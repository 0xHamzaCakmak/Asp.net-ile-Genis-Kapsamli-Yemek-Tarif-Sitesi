using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Sitesi
{
    public class SqlSinif
    {
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=YemekSitesi;Integrated Security=True");
            baglan.Open();
            return baglan;

        }
    }
}