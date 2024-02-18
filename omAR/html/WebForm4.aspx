<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="omAR.html.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/doctors.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Doctors</title>
</head>
<body>
  <style>
      .copyright_section {
    position:relative;
    top:40px;
    width: 100%;
    float: left;
    left:0px;
    background: rgba(0, 0, 0, 0.70);
    height: auto;
}

.copyright_text {
    width: 100%;
    float: initial;
    font-size: 16px;
    color: white;
    font-size:20px;
    font-family:'Times New Roman';
    margin: 20px 0px;
    text-align: center;
}
.copyright_text a {
    color: white;
    text-decoration:none;
}

.copyright_text a:hover {
    color: #3674f2;
}

    #submit1{
        position: absolute;
        top: 6000px;
        left: 250px;
        border: 2px #204060 solid;
        border-radius: 10px;
        width: 150px;
        height: 40px;
        background-color: #204060;
        color: white;
        font-size: 20px;
        font-family: Times-new-roman;
        }
    #submit1:hover{
        cursor:pointer;
        color: #204060;
        background-color:white;
        border: 2px white solid;
        border-radius: 10px;
        font-weight:bold;
    }
    .card-body{
      color:white;
      font-size: 20px;
      font-family: Times-new-roman;
    }
    #emer{
      align-content:center;
      font-size: 25px;
      font-family: Times-new-roman;
      color:white;
    }
      #reh{
      align-content:center;
      font-size: 25px;
      font-family: Times-new-roman;
      color:white;
      background: rgba(0, 0, 0, 0.40);
    }
      #fam{
      align-content:center;
      font-size: 25px;
      font-family: Times-new-roman;
      color:white;
      background: rgba(0, 0, 0, 0.40);
    }
    #int{
      align-content:center;
      font-size: 25px;
      font-family: Times-new-roman;
      color:white;
      background: rgba(0, 0, 0, 0.40);
    }
    #ot{
      align-content:center;
      font-size: 25px;
      font-family: Times-new-roman;
      color:white;
      background: rgba(0, 0, 0, 0.40);
    }    
    #enter_id{
      position:absolute;
      top:5965px;
    }
    #TextBox1{
      position:absolute;
      top:5950px;
      width: 220px;
      height: 30px;
      margin: 10px;
      border-radius: 5px;
      font-family: Times-new-roman;
      font-size: 20px;
      border: solid 1px rgba(255, 255, 255, 0.37);
      -webkit-transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
      transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
      background: -webkit-linear-gradient(top, rgba(255, 255, 255, 0) 96%, #fff 4%);
      background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #fff 4%);
      background-position: -800px 0;
      background-size: 100%;
      background-repeat: no-repeat;
      color: #fff;
    }
    #submit1{
      position:absolute;
      top:6050px;
    }
    #incenter{
      height:6150px;
    }
   .auto-style1 {
          left: 196px;
          top: 5471px;
   }
     #doclink{
  position: absolute;
  left: 1100px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}
#conlink{
  position: absolute;
  left: 1175px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}
#userlink{
  position: absolute;
  left: 1290px;
  top: 7px;
}
#con{
  position: absolute;
  right: 1000px;
  top: 30px;
}
#topbutton{
  position: fixed;
  right: 15px;
  top: 550px;
  z-index:10000;
}

  </style>
    <form id="form1" runat="server">
        <div id="header"> <div id="header2"><a href="WebForm2.aspx"><span id="ic">Doc</span><span id="on">House</span></a> <span><a id="doclink" href="WebForm4.aspx"> Book</a></span><span><a id="conlink" href="../contact/contact.aspx">Contact us</a></span><a href="y.aspx" id="userlink"><img src="images/userr.png" width="35px" height="35px"></a>
            </div></div>
  <a id="topbutton" href="#top"><img src="images/top.png" width="50px" height="50px" alt="back to the top"></a>
  <div align="center"id="incenter">
    <div id="head">Doctors Available</div>
    <div id="emer"> Emergency Medicine</div>
    <asp:ListView ID="Listview" runat="server" DataSourceID="SqlDataSource1">
      <ItemTemplate>
        <div class="card" style="width:30rem; margin:10px; box-shadow: 0px 0px 15px #addd;">
          <div class="card-body">
            <h3 class="card-title">Doc Name: <%# Eval ("doc_name") %></h3>
            <p class="card-text">ID: <%# Eval ("id") %></p>
            <p class="card-text">Age: <%# Eval ("doc_age") %></p>
            <p class="card-text">Salary: <%# Eval ("doc_salary") %></p>
            <p class="card-text">Work Days: <%# Eval ("days_work") %></p>
            <p class="card-text">Work hours: <%# Eval ("hours_work") %></p>
          </div>
        </div>
      </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" SelectCommand="SELECT * FROM [doctors] where doc_Specification='Emergency medicine'"></asp:SqlDataSource>
    
        <div id="reh"> Rheumatology</div>
    <asp:ListView ID="Listview1" runat="server" DataSourceID="SqlDataSource2">
      <ItemTemplate>
        <div class="card" style="width:30rem; margin:10px; box-shadow: 0px 0px 15px #addd;">
          <div class="card-body">
            <h3 class="card-title">Doc Name: <%# Eval ("doc_name") %></h3>
            <p class="card-text">ID: <%# Eval ("id") %></p>
            <p class="card-text">Age: <%# Eval ("doc_age") %></p>
            <p class="card-text">Salary: <%# Eval ("doc_salary") %></p>
            <p class="card-text">Work Days: <%# Eval ("days_work") %></p>
            <p class="card-text">Work hours: <%# Eval ("hours_work") %></p>
          </div>
        </div>
      </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" SelectCommand="SELECT * FROM [doctors] where doc_Specification='Rheumatology'"></asp:SqlDataSource>
    
    <div id="fam"> Family medicine</div>
		<asp:ListView ID="Listview2" runat="server" DataSourceID="SqlDataSource3">
      <ItemTemplate>
        <div class="card" style="width:30rem; margin:10px; box-shadow: 0px 0px 15px #addd;">
          <div class="card-body">
            <h3 class="card-title">Doc Name: <%# Eval ("doc_name") %></h3>
            <p class="card-text">ID: <%# Eval ("id") %></p>
            <p class="card-text">Age: <%# Eval ("doc_age") %></p>
            <p class="card-text">Salary: <%# Eval ("doc_salary") %></p>
            <p class="card-text">Work Days: <%# Eval ("days_work") %></p>
            <p class="card-text">Work hours: <%# Eval ("hours_work") %></p>
          </div>
        </div>
      </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" SelectCommand="SELECT * FROM [doctors] where doc_Specification='Family medicine'"></asp:SqlDataSource>
    
        <div id="int">Internal medicine</div>
    <asp:ListView ID="Listview3" runat="server" DataSourceID="SqlDataSource4">
      <ItemTemplate>
        <div class="card" style="width:30rem; margin:10px; box-shadow: 0px 0px 15px #addd;">
          <div class="card-body">
            <h3 class="card-title">Doc Name: <%# Eval ("doc_name") %></h3>
            <p class="card-text">ID: <%# Eval ("id") %></p>
            <p class="card-text">Age: <%# Eval ("doc_age") %></p>
            <p class="card-text">Salary: <%# Eval ("doc_salary") %></p>
            <p class="card-text">Work Days: <%# Eval ("days_work") %></p>
            <p class="card-text">Work hours: <%# Eval ("hours_work") %></p>
          </div>
        </div>
      </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" SelectCommand="SELECT * FROM [doctors] where doc_Specification='Internal medicine'"></asp:SqlDataSource>
    
            <div id="ot">Otolaryngology</div>
    <asp:ListView ID="Listview4" runat="server" DataSourceID="SqlDataSource5">
      <ItemTemplate>
        <div class="card" style="width:30rem; margin:10px; box-shadow: 0px 0px 15px #addd;">
          <div class="card-body">
            <h3 class="card-title">Doc Name: <%# Eval ("doc_name") %></h3>
            <p class="card-text">ID: <%# Eval ("id") %></p>
            <p class="card-text">Age: <%# Eval ("doc_age") %></p>
            <p class="card-text">Salary: <%# Eval ("doc_salary") %></p>
            <p class="card-text">Work Days: <%# Eval ("days_work") %></p>
            <p class="card-text">Work hours: <%# Eval ("hours_work") %></p>
          </div>
        </div>
      </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" SelectCommand="SELECT * FROM [doctors] where doc_Specification='Otorhinolaryngology'"></asp:SqlDataSource>
    
    <form>
      <br><br><span id="enter_id">Enter Doctor ID:</span>
      
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Doctor id"></asp:TextBox>

      <asp:Button runat='server' text='submit' ID='submit1' OnClick="submit1_Click" CssClass="auto-style1" />
    </form>
  </div>
<div class="copyright_section">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <p class="copyright_text">© 2022 All Rights Reserved.<a href="terms.aspx"> Terms and conditions</a></p>
               </div>
            </div>
         </div>
      </div>
         <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>

    </form>
</body>
</html>
