<%@ Page Title="" Language="C#" MasterPageFile="Site1.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="omAR.html.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="stylesheet" runat="server">
   <link rel="stylesheet" type="text/css" href="css/book.css">
    <style>
    .submit{
       position: absolute;
  top: 1130px;
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

    #incenter{
  width: 50%;
  position: relative;
  margin-left: 330px;
  margin-top: 85px;
  height: 1200px;
  font-family: Times-new-roman;
  font-size: 20px;
  background: rgba(0, 0, 0, 0.40);
}
        .submit:hover{
        cursor:pointer;
        color: #204060;
        background-color:white;
        border: 2px white solid;
        border-radius: 10px;
        font-weight:bold;
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
      top:296px;
      left:32px;
      margin-bottom:10px;
    }
    .pho{
      position:absolute;
      top:387px;
      left:32px;
      margin-bottom:10px;
    }
    #gender{
        color:black;
    }

        .bir {
            position: absolute;
            top: 482px;
            left: 32px;
            margin-bottom: 10px;
        }
        .add{
      position:absolute;
      top:572px;
      left:32px;
      margin-bottom:10px;
         }
        .com{
            position:absolute;
      top:660px;
      left:32px;
      margin-bottom:10px;

        }
        .com1{
            position:absolute;
      top:752px;
      left:32px;
      margin-bottom:10px;
        }
        .com2{
            position:absolute;
      top:845px;
      left:32px;
      margin-bottom:10px;
        }
        .input1{
              position: absolute;
  left: 23px;
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
  color: black;
        }
        #bottom{
            position:absolute;
            top:870px;
        }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headTitle" runat="server">
   <title>Reservation</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
  <div id="head">Reservation</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_body" runat="server">
    <br><br><span class="text">Patient's Name</span><br />
       <asp:TextBox ID="f_name" runat="server" placeholder="First Name" class="input" ControlToValidate="f_name" ValidationGroup="x"></asp:TextBox><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="fst" runat="server" ErrorMessage="*" ControlToValidate="f_name" ValidationGroup="x" ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:TextBox ID="L_name" runat="server" placeholder="Last Name" class="near" ValidationGroup="x"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="lst"  runat="server" ErrorMessage="*" ControlToValidate="L_name" ValidationGroup="x" ForeColor="Red"></asp:RequiredFieldValidator>

      <br><br><br><span class="text">Email Address</span><br>
          <asp:TextBox ID="email" runat="server" placeholder="example@example.com" class="input" TextMode="Email" ValidationGroup="x"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="ema" ErrorMessage="*" ValidationGroup="x" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>

      <br><br><br><span class="text">Phone Number</span><br>
          <asp:TextBox ID="phone" runat="server" placeholder="(+20)000-000-0000" class="input" TextMode="Phone" ValidationGroup="x"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="pho" ErrorMessage="*" ControlToValidate="phone" ValidationGroup="x" ForeColor="Red"></asp:RequiredFieldValidator>

      <br><br><br><span class="text">Date of birth</span><br>
          <asp:TextBox ID="birth" runat="server" placeholder="MM-DD-YYYY" class="input" ValidationGroup="x" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="bir" ErrorMessage="*" ControlToValidate="birth" ValidationGroup="x" ForeColor="Red"></asp:RequiredFieldValidator>

      <br><br><br><span class="text">Address</span><br>
          <asp:TextBox ID="address" runat="server" placeholder="Province-City-Street" class="input" ValidationGroup="x"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="add" runat="server" ErrorMessage="*" ValidationGroup="x" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>

      <br><br><br><span class="text">Gender</span><br>
         <asp:DropDownList ID="gender" runat="server" CssClass="input1" ValidationGroup="x">
         <asp:ListItem value="Select Gender" selected="True">Select Gender</asp:ListItem>
               <asp:ListItem Value="Male">Male </asp:ListItem>
               <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:DropDownList>
         
  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="com" runat="server" ErrorMessage="*" ControlToValidate="gender" ForeColor="Red" ValidationGroup="x" InitialValue="Select Gender"></asp:RequiredFieldValidator>



       <br><br><br><span class="text">Day of the visit</span><br>
       

       <asp:DropDownList ID="combo1" runat="server" CssClass="input1" ValidationGroup="x">
           <asp:ListItem value="select day" selected="True">select day</asp:ListItem>
           <asp:ListItem value="Saturday">Saturday</asp:ListItem>
           <asp:ListItem value="Sunday">Sunday</asp:ListItem>
           <asp:ListItem value="Monday">Monday</asp:ListItem>
           <asp:ListItem value="Tuesday">Tuesday</asp:ListItem>
           <asp:ListItem value="Wednesday">Wednesday</asp:ListItem>
       <asp:ListItem value="Thursday">Thursday</asp:ListItem>
       <asp:ListItem value="Friday">Friday</asp:ListItem>
           </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="com1" runat="server" ErrorMessage="*" ValidationGroup="x" ControlToValidate="combo1" ForeColor="Red" InitialValue="select day"></asp:RequiredFieldValidator>


      <br><br><br><span class="text">At which hour</span><br>
       
       <asp:DropDownList ID="combo2" runat="server" CssClass="input1" ValidationGroup="x" ControlToValidate="combo2">
           <asp:ListItem value="select time range" selected="True">select time range</asp:ListItem>
           <asp:ListItem value="8-10 AM"> 8-10 AM</asp:ListItem>
           <asp:ListItem value="10-12 AM"> 10-12 AM</asp:ListItem>
           <asp:ListItem value="12-2 PM"> 12-2 PM</asp:ListItem>
           <asp:ListItem value="2-4 PM"> 2-4 PM</asp:ListItem>
           <asp:ListItem value="4-6 PM"> 4-6 PM</asp:ListItem>
       <asp:ListItem value="6-8 PM"> 6-8 PM</asp:ListItem>
       <asp:ListItem Value="8-10 PM">8-10 PM</asp:ListItem>

           </asp:DropDownList>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass="com2" ErrorMessage="*" ValidationGroup="x" ControlToValidate="combo2" ForeColor="Red" InitialValue="select time range"></asp:RequiredFieldValidator>
         
      <div id="bottom" class="t">Terms And Conditions</div>
      <div id="terms" class="tt">I understand that my data will be strictly confidential. DocHouse does not sell, share, or resell information.  I confirm that all information in this form is true and accurate. I confirm that if I hold some important information and complications happened, DocHouse will not be liable. I release DocHouse and hold harmless against any claims, expenses, damages, and liabilities.</div>
  <asp:Button ID="submit" runat="server" Text="Submit" ValidationGroup="x" type="submit" CssClass="submit" OnClick="Seedoctor" />
   

</asp:Content>
