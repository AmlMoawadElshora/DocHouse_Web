<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="forgot.aspx.cs" Inherits="WebApplication1.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<title>DocHouse</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/forgot.css" rel="stylesheet" type="text/css" media="all" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        
<div class="login-page">
    <h1>Forgot password?</h1>
  <div class="form">
   
    <form class="login-form">
       <label id="security">Select a security question</label>
        <br>
        <br>
                    <asp:DropDownList ID="sss" runat="server">

				  <asp:ListItem Value="Select a question" Selected="True">Select a question</asp:ListItem>
                  <asp:ListItem  Value="What is your pets name?">What's your pets name? </asp:ListItem>
                  <asp:ListItem Value="What is your uncles name?">What's your uncles name?</asp:ListItem>
                  <asp:ListItem Value="How many siblings you have?">How many siblings you have?</asp:ListItem>
                  <asp:ListItem Value="What is your grandma name?">What's your grandma name?</asp:ListItem>
                  <asp:ListItem Value="What is your favourite ice cream flavour?">What's your favourite ice cream flavour?</asp:ListItem>
                  <asp:ListItem Value="What is your favourite color?">What's your favourite color?</asp:ListItem>


					</asp:DropDownList>
					<asp:RequiredFieldValidator
             ID="Requ"
             runat="server"
             ControlToValidate="sss"
             InitialValue="Select a question"
             ErrorMessage="* Please select an item."
             ForeColor="Red"
             >         </asp:RequiredFieldValidator>
        <br>
        <asp:TextBox ID="answer" runat="server" placeholder="your answer"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="answer" ForeColor="red"></asp:RequiredFieldValidator>
					&nbsp &nbsp&nbsp&nbsp
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter letters only" ForeColor="red" ControlToValidate="answer" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
        <asp:Button ID="Button1" runat="server" Text="CONFIRM" OnClick="Button1_Click" />
    </form>
  </div>
</div>
    </form>
</body>
</html>
