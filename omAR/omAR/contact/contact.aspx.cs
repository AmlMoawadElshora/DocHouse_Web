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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection oy;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            oy = new SqlConnection(@"Data Source=AML-MOAWAD;Initial Catalog=web_project;Integrated Security=True");
        }

        protected void button_Click(object sender, EventArgs e)
        {
            

            oy.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[contact_us] values ('" + name.Text+"','"+email.Text+"','"+ phonenumber.Text+"','"+message.Text+"')",oy);
            cmd.ExecuteNonQuery();
            name.Text = email.Text = phonenumber.Text = message.Text = null;
            Response.Write("<script>alert('We got your message successfully'); window.location.href='../html/WebForm2.aspx';</script>");
            oy.Close();
        }
    }
}