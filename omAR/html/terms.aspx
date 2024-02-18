<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/terms.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Terms And Conditions</title>
</head>
<body>
	<style>
		    #topbutton{
  position: fixed;
  right: 15px;
  top: 550px;
  z-index:10000;
}
			.copyright_section {
    position:relative;
    top:0px;
    width: 100%;
    float: left;
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

			    #incenter{
  width: 50%;
  position: relative;
  margin-left: 330px;
  margin-top: 85px;
  height: 1120px;
  margin-bottom:70px;
  font-family: Times-new-roman;
  font-size: 20px;
  background: rgba(0, 0, 0, 0.40);
}
	</style>
    <form id="form1" runat="server">
        <div id="header"> <div id="header2"><a href="WebForm2.aspx"><span id="ic">Doc</span><span id="on">House</span></a> <span><a id="doclink" href="WebForm4.aspx"> Book</a></span><span><a id="conlink" href="../contact/contact.aspx">Contact us</a></span><a href="y.aspx" id="userlink"><img src="images/userr.png" width="35px" height="35px"></a></div></div>
	<a id="topbutton" href="#top"><img src="images/top.png" width="50px" height="50px" alt="back to the top"></a>
	<div align="center"id="incenter">
		<div id="head">Terms And Conditions</div>
		<div id="words" align="left">Please take your time to read the terms and conditions. It includes important information about us and the way in which we will provide care to you. If you have any questions about these terms then we will be happy to answer them, so please do ask us.

We may need to update these terms from time to time. If we do this, then we will let you know at the contact address provided.

References to you or your means you, as our client and the recipient of our services, treatments, tests and procedures we may carry out for you treatment.<br><br> 1. These terms do not contain specific information about how much your care will cost. Details of doctor cost are set out in his information. You can not discuss costs of any Treatment with the doctor and you will be provided with terms around such payment (the “Payment Terms”). You should ensure that you read these Payment Terms provided carefully. If you are unsure about the costs of your care please ask us.<br><br>2. Who we are and how to contact us:<br>We are students who are aiming to help you and everybody in Egypt and you can read about us at the home page as it includes information about us.<br>You can contact us from page contact us or on our social media and we will be really happy to serve you. <br><br>3. General terms and conditions relating to all patients:<br>Your data will be strictly confidential. DocHouse does not sell, share, or resell information.<br>If you have any complains please feel welcome to come to us and share everything, we will hear you and make sure that you are satisfied from us and our services to you.<br>Your chat with us will be private, even your doctor will have no idea about it.<br><br> 4. Payment for Treatments:<br> We have only one way that you can pay us with it, and it's cash. This is for the sake of your money safty as if you pay online and something went wrong we can not help you get your money back and you will have a long tiring process to get your money back and we said before that we are aiming for your comfort so the cash is the most secure way for you.<br><br>5. General terms and conditions relating to all Doctors:<br>Your data about all your confirmed and rejected reservation are private, you are the only one that can access them.<br>If anything went wrong with your patient and he didn't respect you or didn't give you your money, please don't do anything except contacting with us and we will protect you and your rights and we will protect other doctors from this patient thanks to you and your collaboration.  </div>
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
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    </form>
</body>
</html>
