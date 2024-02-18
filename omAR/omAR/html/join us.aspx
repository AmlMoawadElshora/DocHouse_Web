<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode ="none" CodeBehind="join us.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/join.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Join Us</title>

	

</head>
<body>
   <style>

    .fst{
      position:absolute;
      top:181px;
      left:32px;
      margin-bottom:10px;
    }
    .lst{
      position:absolute;
      top:181px;
      left:410px;
      margin-bottom:10px;
    }
    .ema{
      position:absolute;
      top:273px;
      left:32px;
      margin-bottom:10px;
    }
    .pho{
      position:absolute;
      top:365px;
      left:32px;
      margin-bottom:10px;
    }
    .bir{
      position:absolute;
      top:457px;
      left:32px;
      margin-bottom:10px;
    }
    .add{
      position:absolute;
      top:549px;
      left:32px;
      margin-bottom:10px;
    }
    .edu{
      position:absolute;
      top:835px;
      left:32px;
      margin-bottom:10px;
    }
    #gen{
      position:absolute;
      top:570px;
    }
    #gender{
      position:absolute;
      top:590px;
      color:black;
    }
    .cr{
            position:absolute;
            top:1110px;
            left:40px;
            margin-bottom:10px;
    }

    #check{
            position:absolute;
            top: 1142px;
            left:35px;
    }
    #agree{
            position:absolute;
            top:1140px;
            left:70px;
    }
               #submit{
              position: absolute;
              top: 1190px;
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
      #submit:hover{
        cursor:pointer;
        color: #204060;
        background-color:white;
        border: 2px white solid;
        border-radius: 10px;
        font-weight:bold;
      }
    .chk{
    
        position:absolute;
            top:1160px;
            left:40px;
            
    }
		    #topbutton{
  position: fixed;
  right: 15px;
  top: 550px;
  z-index:10000;
}
			    #incenter{
  width: 50%;
  position: relative;
  margin-left: 370px;
  margin-top: 85px;
  height: 1280px;
  margin-bottom:70px;
  font-family: Times-new-roman;
  font-size: 20px;
  background: rgba(0, 0, 0, 0.40);
}
.copyright_section {
    position:relative;
    top:450px;
    width: 200%;
    float: left;
    left:-330px;
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
#joinlink{
  position: absolute;
  left: 1300px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}
#conlink{
  position: absolute;
  left: 1400px;
  top: 12px;
  text-decoration: none;
  font-family: Times-new-roman;
  color:  #e6faff;
}


  </style>
    <form id="form1" runat="server">
        <div id="header"> <div id="header2"><a href="WebForm1.aspx"><span id="ic">Doc</span><span id="on">House</span></a> <span><a  id="joinlink" href="join us.aspx">Join us</a></span><span><a id="conlink" href="../contact/contact.aspx">Contact us</a></span></div></div>
  <a id="topbutton" href="#top"><img src="images/top.png" width="50px" height="50px" alt="back to the top"></a>
  <div align="center"id="incenter">
    <div id="head">Join Us</div>
    
      <br><br><span class="text">Name</span><br>            
      <asp:TextBox ID="fst_name" runat="server" placeholder="First Name" class="input"></asp:TextBox> 
      <asp:TextBox ID="lst_name" runat="server" placeholder="Last Name" class="near"></asp:TextBox> 
      <asp:RequiredFieldValidator ID="fstName_req" CssClass="fst" runat="server" ErrorMessage="*" ControlToValidate="fst_name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
      <asp:RequiredFieldValidator ID="lstName_req" CssClass="lst" runat="server" ErrorMessage="*" ControlToValidate="lst_name" ForeColor="#FF3300"></asp:RequiredFieldValidator>


      <br><br><br><span class="text">Email Address</span><br>      
      <asp:TextBox ID="email" runat="server" placeholder="example@example.com" class="input" TextMode="Email"></asp:TextBox>
      <asp:RequiredFieldValidator ID="email_req" runat="server" CssClass="ema" ErrorMessage="*" ControlToValidate="email" ForeColor="#FF3300"></asp:RequiredFieldValidator>


      <br><br><br><span class="text">Phone Number</span><br>      
      <asp:TextBox ID="phone" runat="server" placeholder="(+20)000-000-0000" class="input"></asp:TextBox>
      
      <asp:RequiredFieldValidator ID="phone_req" runat="server" CssClass="pho" ErrorMessage="*" ControlToValidate="phone" ForeColor="#FF3300"></asp:RequiredFieldValidator>


      <br><br><br><span class="text">Date of birth</span><br>      
      <asp:TextBox ID="birth" runat="server" placeholder="MM-DD-YYYY" class="input" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="birth_req" runat="server" CssClass="bir" ErrorMessage="*" ControlToValidate="birth" ForeColor="#FF3300"></asp:RequiredFieldValidator>


      <br><br><br><span class="text">Address</span><br>      
      <asp:TextBox ID="address" runat="server" placeholder="Province-City-Street" class="input"></asp:TextBox>
      <asp:RequiredFieldValidator ID="address_req" runat="server" CssClass="add" ErrorMessage="*" ControlToValidate="address" ForeColor="#FF3300"></asp:RequiredFieldValidator>

      <br><br><br><span class="text" ID="gen" >Gender</span><br>      
      <br>
        <asp:DropDownList ID="gender" runat="server" Class="input" >
            <asp:ListItem value="Select Gender" selected="True">Select Gender</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:DropDownList><br><br><span class="text">Please mention about your Education and Specification.</span><br>      
      <asp:TextBox ID="edu" runat="server" placeholder=" Education" TextMode="MultiLine"></asp:TextBox>
      <asp:RequiredFieldValidator ID="edu_req" runat="server" CssClass="edu" ErrorMessage="*" ControlToValidate="edu" ForeColor="#FF3300"></asp:RequiredFieldValidator>


      <br><br><br><span class="text" id="cli">Which work places did you work before? Please list them all.</span><br>      
      <asp:TextBox ID="clic" runat="server" placeholder=" Clinics" TextMode="MultiLine"></asp:TextBox>


      <br><br><br><span class="text" id="credit"> Upload your Graduation Certificate</span><br>      
      <asp:FileUpload ID="upload" runat="server" />
      <asp:RequiredFieldValidator ID="file_req" runat="server" ErrorMessage="*" ControlToValidate="upload" ForeColor="#FF3300" CssClass="cr"></asp:RequiredFieldValidator>

      

        <asp:CheckBox runat='server' id='check'></asp:CheckBox>  <span id="agree">I Agree To All Terms And Conditions </span>
        <asp:CustomValidator runat='server' ErrorMessage='*'
        OnServerValidate='ServerValidation'  ClientValidationFunction='ClientValidation'
        ID='Customvalidator1' CssClass="chk" ForeColor="#FF3300"  />
         
         
         <asp:Button runat='server' text='submit' CssClass="submit" ID='submit' OnClick="submit_Click"/>
      <div class="copyright_section">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <p class="copyright_text">© 2022 All Rights Reserved.<a href="terms.aspx"> Terms and conditions</a></p>
               </div>
            </div>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
       <script language='javascript'> 
           function ClientValidation(source, args) {
               args.IsValid = document.all['check'].checked;
           }
       </script> 
      
         <script runat='server' language='cs'> 
             void ServerValidation(object source, ServerValidateEventArgs args) 
             { 
                      args.IsValid = check.Checked; 
             } 
         </script>
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>


        


       

       
    



  </div>
    </form>
</body>
</html>
