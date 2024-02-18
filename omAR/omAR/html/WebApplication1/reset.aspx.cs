using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class reset : System.Web.UI.Page
    {
        SqlConnection cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=AML-MOAWAD;Initial Catalog=web_project;Integrated Security=True; MultipleActiveResultSets=true");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();

            SqlCommand cm = new SqlCommand("update signUp set pass ='"+pp.Text+"'  , confirmpass ='"+ppp.Text+"' where email = '"+Session["email"]+"'",cn);
            cm.ExecuteNonQuery();
            Response.Write("<script> alert('Password has been reseted successfully') </script>");
            Response.Redirect("Log%20in.aspx");


            cn.Close();

        }
    }
}