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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=AML-MOAWAD;Initial Catalog=Reservation;Integrated Security=True");
            
        }

        protected void Seedoctor(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into user_data(f_name,l_name,email,phone,date_birth,addresss,Gender,date_visit,hourr,doc_id,doc_name,Specification,salary) values('" + f_name.Text + "','" + L_name.Text + "','" + email.Text + "','" + phone.Text + "','" + birth.Text + "','" + address.Text + "','" + gender.Text + "','" + combo1.Text + "','" + combo2.Text + "','" + Session["name"].ToString() + "','" + Session["doc_name"].ToString() + "','" + Session["specification"].ToString() + "','" + Session["salary"].ToString() + "')", cn);
            cm.ExecuteNonQuery();
            f_name.Text = L_name.Text = email.Text = phone.Text = birth.Text = address.Text = gender.Text = combo1.Text = combo2.Text = null;
            Response.Write("<script> alert('Reservation confirmed successfully ') ; window.location.href='y.aspx';</script>");
            cn.Close();
        }
    }
}