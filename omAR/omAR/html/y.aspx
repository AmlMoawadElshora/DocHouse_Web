<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="y.aspx.cs" Inherits="omAR.html.y" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/user.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ME</title>
</head>
<body>
    <style>
        #incenter{
              width: 85%;
              position: relative;
              margin-left: 100px;
              margin-top: 85px;
              height: 520px;
              font-family: Times-new-roman;
              font-size: 20px;
              background: rgba(0, 0, 0, 0.40);
        }
        #head{
          background: rgba(0, 0, 0, 0.40);
          color: white;
          font-size: 36px;
          height: 50px;
          padding: 10px;
          width: 98%;
        }
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
		    #topbutton{
  position: fixed;
  right: 15px;
  top: 650px;
  z-index:10000;
}
#doclink{
  position: absolute;
  left: 1270px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}
#conlink{
  position: absolute;
  left: 1350px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}
#userlink{
  position: absolute;
  left: 1450px;
  top: 7px;
}
    </style>
    <form id="form1" runat="server">
        <div id="header"> <div id="header2"><a href="WebForm2.aspx"><span id="ic">Doc</span><span id="on">House</span></a> <span><a id="doclink" href="WebForm4.aspx"> Book</a></span><span><a id="conlink" href="../contact/contact.aspx">Contact us</a></span><a href="y.aspx" id="userlink"><img src="images/userr.png" width="35px" height="35px"></a>
            </div></div>
  <a id="topbutton" href="#top"><img src="images/top.png" width="50px" height="50px" alt="back to the top"></a>
  <div align="center"id="incenter">
    <div id="head">Me</div>

     

      
      <asp:GridView ID="GridView1" runat="server" Width="90%" CaptionAlign="Left" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="f_name" HeaderText="First Name" SortExpression="f_name" />
              <asp:BoundField DataField="l_name" HeaderText="Last Name" SortExpression="l_name" />
              <asp:BoundField DataField="addresss" HeaderText="Addresss" SortExpression="addresss" />
              <asp:BoundField DataField="date_visit" HeaderText="Day" SortExpression="date_visit" />
              <asp:BoundField DataField="hourr" HeaderText="Hour" SortExpression="hourr" />
              <asp:BoundField DataField="doc_name" HeaderText="Doc Name" SortExpression="doc_name" />
              <asp:BoundField DataField="Specification" HeaderText="Specification" SortExpression="Specification" />
              <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" />
          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#F7F7DE" />
          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#FBFBF2" />
          <SortedAscendingHeaderStyle BackColor="#848384" />
          <SortedDescendingCellStyle BackColor="#EAEAD3" />
          <SortedDescendingHeaderStyle BackColor="#575357" />
      </asp:GridView>

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
