<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Log in.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>DocHouse</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

</head>
<body>
    <style>
        .log{
                  font-family: "Roboto", sans-serif;
                  text-transform: uppercase;
                  outline: 0;
                  background: #204060;
                  width: 100%;
                  border: 0;
                  padding: 15px;
                  color: #FFFFFF;
                  font-size: 14px;
                  -webkit-transition: all 0.3 ease;
                  transition: all 0.3 ease;
                  cursor: pointer;
        }
    </style>
    <form id="form1" runat="server">
        <div class="login-page">
    <h1>LOGIN</h1>
  <div class="form">
    <form class="login-form">
        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="email" ForeColor="red" ValidationGroup="log"></asp:RequiredFieldValidator>
       &nbsp &nbsp&nbsp&nbsp <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ValidationGroup="log" runat="server" ErrorMessage="please enter a valid email" ForeColor="red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <asp:TextBox ID="password" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="password"  ForeColor="red" ValidationGroup="log"></asp:RequiredFieldValidator>
      &nbsp &nbsp&nbsp&nbsp <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  ValidationGroup="log" runat="server" ForeColor="red" ErrorMessage="please enter numbers only" ControlToValidate="password" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>

        <asp:Button ID="login" runat="server" CssClass="log" Text="login" ValidationGroup="log" OnClick="login_Click"/>
      <p class="message">Forgot your password?     <asp:LinkButton ID="lnkCallHyperlink" Text="Click here!" runat="server" OnClick="lnkCallHyperlink_Click1"/>

    </form>
  </div>
</div>
    </form>
</body>
</html>
