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
    public partial class forgot : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=AML-MOAWAD;Initial Catalog=DocHouse;Integrated Security=True; MultipleActiveResultSets=true");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();

            SqlCommand cm = new SqlCommand("select * from signUp where email ='"+Session["email"].ToString()+"' and question ='"+sss.Text+"'  and  answer ='"+answer.Text+"'", cn);
            SqlDataReader sdr = cm.ExecuteReader();
            sdr.Read();
            if(sdr.HasRows == true)
            {
                Response.Redirect("reset.aspx");
            }
            else
            {
                Response.Write("<script> alert('question or answer is wrong') </script>");

            }

            cn.Close();
        }
    }
}