using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace omAR.html
{
    public partial class y : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=AML-MOAWAD;Initial Catalog=Reservation;Integrated Security=True;");
            cn.Open();
            SqlCommand cm = new SqlCommand("SELECT [f_name], [l_name], [addresss], [date_visit], [hourr], [doc_name], [Specification], [salary] FROM [user_data] where email='" + Session["email2"].ToString() + "'", cn) ;
            SqlDataReader sdr = cm.ExecuteReader();

            if (sdr.HasRows == true)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script> alert('you have no reservation yet! book now ') ; window.location.href='WebForm4.aspx';</script>");
            }
            cn.Close();
        }
    }
}