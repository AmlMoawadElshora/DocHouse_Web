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
    public partial class SignUp : System.Web.UI.Page
    {

        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=AML-MOAWAD;Initial Catalog=DocHouse;Integrated Security=True; MultipleActiveResultSets=true");
        }

        protected void signUpp_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmm = new SqlCommand("select * from signUp where email ='"+eee.Text+"'", cn);
            SqlDataReader sdr = cmm.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows == false)
            {
                SqlCommand cm = new SqlCommand("insert into signUp values('" + uuu.Text + "' , '" + eee.Text + "' ,'" + pp.Text + "' , '" + ppp.Text + "' , '" + sss.Text + "' , '" + answer.Text + "' )", cn);
                cm.ExecuteNonQuery();
                uuu.Text = sss.Text = eee.Text = ppp.Text = pp.Text = answer.Text = null;
                CheckBox.Checked = false;
                Response.Redirect("Log%20in.aspx");

            }
            else
            {
                Response.Write("<script>alert('This Email has already regestired before')</script>");
                uuu.Text = sss.Text = eee.Text = ppp.Text = pp.Text = answer.Text = null;
                CheckBox.Checked = false;
            }

            cn.Close();
        }
        
    }
}