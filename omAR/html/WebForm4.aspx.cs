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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=AML-MOAWAD;Initial Catalog=Reservation;Integrated Security=True");
        }
        protected void submit1_Click(object sender, EventArgs e)
        {
            cn.Open();
            Session["name"] = TextBox1.Text;
            SqlCommand cm = new SqlCommand("select doc_name ,doc_specification,doc_salary from doctors where id = '" + TextBox1.Text + "'", cn);
            SqlDataReader sdr = cm.ExecuteReader();
            sdr.Read();
            Session["doc_name"] = sdr["doc_name"];
            Session["specification"] = sdr["doc_specification"];
            Session["salary"] = sdr["doc_salary"];
            Response.Redirect("webform3.aspx");
            cn.Close();
        }
    }
}