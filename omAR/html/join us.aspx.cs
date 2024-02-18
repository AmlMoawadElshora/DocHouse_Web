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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection oy;
        string file = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            oy = new SqlConnection(@"Data Source=AML-MOAWAD;Initial Catalog=DocHouse;Integrated Security=True");
        }



        protected void submit_Click(object sender, EventArgs e)
        { 
            oy.Open();
            int length = upload.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            upload.PostedFile.InputStream.Read(pic, 0, length);
            SqlCommand yy = new SqlCommand("INSERT INTO [dbo].[doc_data] values ('" + fst_name.Text+"','"+lst_name.Text+"','"+email.Text+"','"+phone.Text+"','"+birth.Text+"','"+address.Text+"','"+gender.Text+"','"+edu.Text+"','"+clic.Text+"',@image)",oy);
            yy.Parameters.AddWithValue("@image", pic);
            yy.ExecuteNonQuery();
            fst_name.Text = lst_name.Text = email.Text = phone.Text = birth.Text = address.Text = edu.Text = clic.Text = null;
            Response.Write("<script>alert('We got your data successfully!') </script>");
            oy.Close();
            
        }

        
    }
}