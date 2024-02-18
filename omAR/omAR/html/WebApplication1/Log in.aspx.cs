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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=AML-MOAWAD;Initial Catalog=web_project;Integrated Security=True; MultipleActiveResultSets=true");

        }

        protected void login_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cm = new SqlCommand("select * from signUp where email ='"+email.Text+"' and pass ='"+password.Text+"' ", cn);

           SqlDataReader sdr =  cm.ExecuteReader();
            sdr.Read();
            if(sdr.HasRows == true)
            {
                Session["email2"] = email.Text;
                Response.Write("<script> alert('Hello " + sdr["f_name"] + "') ;window.location.href='../WebForm2.aspx';</script>");
                email.Text = password.Text = "";
            }
            else
            {
                email.Text = password.Text = "";
                Response.Write("<script> alert('Email or password is wrong') </script>");
            }
            cn.Close();

        }

    

        protected void lnkCallHyperlink_Click1(object sender, EventArgs e)
        {
            if (email.Text == "")
            {
                Response.Write("<script> alert('please enter the email you want to reset') </script>");

            }
            else
            {


                cn.Open();

                SqlCommand cm = new SqlCommand("select * from signUp where email = '" + email.Text + "'", cn);
                SqlDataReader sdr = cm.ExecuteReader();
                sdr.Read();
                if(sdr.HasRows == true)
                {
                    Session["email"] = email.Text;
                    Response.Redirect("forgot.aspx");
                }
                else
                {
                    Response.Write("<script> alert('this email has not registerd yet') </script>");

                }


                cn.Close();



            }
        }
    }
}