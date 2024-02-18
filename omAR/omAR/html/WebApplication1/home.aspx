<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>DocHouse</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen"></head>
<body>
    <form id="form1" runat="server">
          <!--header section start -->
      <div class="header_section">
         <div class="container-fluid">
               <div class="main">
                  <div class="logo"><a href="index.html"><img src="images/d.png" width="80px" height="40px"></a></div>
                  <div class="menu_text">
                     <ul>
                        <div class="togle_">
                           <div class="menu_main">
                              <ul>
                                 <li><a href="book.html">Book</a></li>
                              </ul>
                           </div>
                        </div>
                        &nbsp &nbsp &nbsp 
                        <div id="myNav" class="overlay">
                           <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                           <div class="overlay-content">
                              <a href="home.html">Home</a>
                              <a href="book.html">Book now</a>
                              <a href="contact.html">Contact us</a>
                              <a href="user.html">User</a>
                              <a href="terms.html">Terms and Conditions</a>
                           </div>
                        </div>
                        <span class="navbar-toggler-icon"></span>
                        <span onclick="openNav()"><img src="images/toogle-icon.png" class="toggle_menu"></span>
                        <span onclick="openNav()"><img src="images/toogle-icon1.png" class="toggle_menu_1"></span>
                     </ul>
                  </div>
               </div>
            </div>
      <!-- banner section start -->
      <div class="banner_section layout_padding">
         <div class="container">
            <div id="my_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="container">
                              <h1 class="banner_taital">You are in Good Hands</h1>
                              <p class="banner_text">DocHouse is a website to help all people to reach their comfort as it enables everyone to make an online reservation to whoever the doctor they want in whatever day and whatever hour they want.</p>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="banner_img"><img src="images/banner-img.png"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- banner section end -->
      </div>
      <!-- header section end -->
      <!-- protect section start -->
      <div class="protect_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="protect_taital">How to book</h1>
               </div>
            </div>
            <div class="protect_section_2 layout_padding">
               <div class="row">
                  <div class="col-md-6">
                     <h1 class="hands_text"><a href="book.html">Enter some of the<br>patient data</a></h1>
                     <h1 class="hands_text_2"><a href="book.html">See available<br>doctors</a></h1>
                     <h1 class="hands_text"><a href="book.html">Choose the prefered<br>doctor</a></h1>
                  </div>
                  <div class="col-md-6">
                     <div class="image_2"><img src="images/doc.png"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   
      <!-- doctor section end -->
      <!-- news section start -->
      <div class="news_section layout_padding">
         <div class="container">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <h1 class="news_taital">Our Team</h1>
                     <p class="news_text">We are a team of five students and here is some information about us:</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/ahmed.jpg"></div>
                           <h2 class="design_text">Ahmed Hesham</h2>
                           <p class="lorem_text">our team leader, A helpfull person who works on himself alot.</p>
                           <div class="read_btn"><a href="https://www.facebook.com/profile.php?id=100002910460921">Follow him</a></div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                    <h1 class="news_taital">Our Team</h1>
                     <p class="news_text">We are a team of five students and here is some information about us:</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/ashraf.jpg"></div>
                           <h2 class="design_text">Ahmed Ashraf</h2>
                           <p class="lorem_text">Speechless team member, Always has a great point of view.</p>
                           <div class="read_btn"><a href="https://www.facebook.com/ahmedashrafmagdy">Follow him</a></div>
                        </div>
                     </div>
                  </div>                  
                  <div class="carousel-item">
                    <h1 class="news_taital">Our Team</h1>
                     <p class="news_text">We are a team of five students and here is some information about us:</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/omar.jpg"></div>
                           <h2 class="design_text">Omar Abd Elwhab</h2>
                           <p class="lorem_text">Active team member, Has the ability to handle any situation.</p>
                           <div class="read_btn"><a href="https://www.facebook.com/omar.abdelwhab.18">Follow him</a></div>
                        </div>
                     </div>
                  </div>                  
                  <div class="carousel-item">
                    <h1 class="news_taital">Our Team</h1>
                     <p class="news_text">We are a team of five students and here is some information about us:</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/farah.jpg"></div>
                           <h2 class="design_text">Farah Hany</h2>
                           <p class="lorem_text">Fluent team member, Has the abililty to presuade us to do any task.</p>
                           <div class="read_btn"><a href="https://www.facebook.com/farah.hany.96558">Follow her</a></div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                    <h1 class="news_taital">Our Team</h1>
                     <p class="news_text">We are a team of five students and here is some information about us:</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/amll.jpg"></div>
                           <h2 class="design_text">Aml Moawad</h2>
                           <p class="lorem_text">Collaborative team member, Always trying to not shout and be a calm member.</p>
                           <div class="read_btn"><a href="https://www.facebook.com/AmlMoawad74">Follow her</a></div>
                        </div>
                     </div>
                  </div>
               </div>
                  
               <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
               <i class="fa fa-angle-left"></i>
               </a>
               <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
               </a>
            </div>
            </div>
         </div>
      </div>
      <div class="copyright_section">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <p class="copyright_text">© 2022 All Rights Reserved.<a href="terms.html"> Terms and conditions</a></p>
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
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
              
         $(".zoom").hover(function(){
              
         $(this).addClass('transition');
         }, function(){
              
         $(this).removeClass('transition');
         });
         });
      </script> 
      <script>
         function openNav() {
         document.getElementById("myNav").style.width = "100%";
         }
         function closeNav() {
         document.getElementById("myNav").style.width = "0%";
         }
      </script>  
    </form>
</body>
</html>
