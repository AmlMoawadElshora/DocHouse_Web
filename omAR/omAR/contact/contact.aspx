<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Contact Us</title>
</head>
<body>
    <style>
        #header2{
  position: relative;
  margin-bottom: 10px;
}
#header{
  margin-bottom: 10px;
  position: fixed;
  color:white ;
  font-style: bold;
  background: rgb(0, 0, 0, 0.7);
  font-size: 20px;
  font-family: Times-new-roman;
  top: 0px;
  margin-bottom: 5px;
  height: 50px;
  width: 100%;
}
#ic{
  position: absolute;
  left: 10px;
  top:2px;
  color: #e6faff;
  text-decoration: none;
  font-family: Times-new-roman;
  font-size: 24px;
}
#on{
  position: absolute;
  left: 52px;
  top: 2px;
  color: #6666ff;
  font-size: 24px;
  text-decoration: none;
  font-family: Times-new-roman;
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
  t
    </style>
    <div id="header"> <div id="header2"><a href="../html/WebForm2.aspx"><span id="ic">Doc</span><span id="on">House</span></a> <span><a id="doclink" href="../html/WebForm4.aspx"> Book</a></span><span><a id="conlink" href="contact.aspx">Contact us</a></span><a href="../html/y.aspx" id="userlink"><img src="../html/images/userr.png" width="35px" height="35px"></a>
            </div></div>
    <form id="form1" runat="server">
       <div class="content">
    
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-10">
          

          <div class="row justify-content-center">
            <div class="col-md-6">
              
              <h3 class="heading mb-4">Let's talk about everything!</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas debitis, fugit natus?</p>

              <p><img src="images/undraw-contact.svg" alt="Image" class="img-fluid"></p>


            </div>
            <div class="col-md-6">
              
              <form class="mb-5" method="post" id="contactForm" name="contactForm">
                <div class="row">
                  <div class="col-md-12 form-group">                    
                     <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Your name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="name_req" runat="server" ErrorMessage="Name required" ControlToValidate="name" Display="Static" Font-Underline="False" BorderStyle="NotSet" ForeColor="#CC0000"></asp:RequiredFieldValidator>


                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-group">                   
                     <asp:TextBox ID="email" runat="server"  placeholder="Email" class="form-control" TextMode="Email" > </asp:TextBox>
                      <asp:RequiredFieldValidator ID="email_req" runat="server" ErrorMessage="Email required" ControlToValidate="email" ForeColor="#CC0000" ValidationExpression= "\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RequiredFieldValidator>


                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-group">                    
                     <asp:TextBox ID="phonenumber" runat="server" placeholder="Phone Number" class="form-control" TextMode="Phone"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="phone_req" runat="server" ErrorMessage="Phone Number required" ControlToValidate="phonenumber" ForeColor="#CC0000" ValidationExpreesion="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"></asp:RequiredFieldValidator>

                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-group">                    
                     <asp:TextBox ID="message" runat="server" cols="30" rows="7" placeholder="Write your message" class="form-control" TextMode="MultiLine"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="message_req" runat="server" ErrorMessage="Message required" ControlToValidate="message" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                  </div>
                </div>  
                <div class="row">
                  <div class="col-12">                  
                      <asp:Button ID="button" runat="server" Text="Submit" class="btn btn-primary rounded-0 py-2 px-4" OnClick="button_Click"/>

                  <span class="submitting"></span>
                  </div>
                </div>
              </form>

              <div id="form-message-warning mt-4"></div> 
              <div id="form-message-success">
                Your message was sent, thank you!
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
    </form>
</body>
</html>
