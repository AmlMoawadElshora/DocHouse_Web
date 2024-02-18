<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="reset.aspx.cs" Inherits="WebApplication1.reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>DocHouse</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/reset.css" rel="stylesheet" type="text/css" media="all" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
       <div class="login-page">
    <h1>Reset password</h1>
  <div class="form">
    <form class="login-form">
                    <asp:TextBox ID="pp" runat="server" TextMode="Password"  placeholder="Password"></asp:TextBox>
			        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="pp" ForeColor="red"></asp:RequiredFieldValidator>
					&nbsp &nbsp&nbsp&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="red" ErrorMessage="please enter numbers only" ControlToValidate="pp" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>

        <br>
					<asp:TextBox ID="ppp" runat="server" TextMode="Password"  placeholder="Confirm Password"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="ppp" ForeColor="red"></asp:RequiredFieldValidator> &nbsp &nbsp&nbsp&nbsp
					<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="two passwords don't match" ControlToValidate="pp" ControlToCompare="ppp" ForeColor="red"></asp:CompareValidator>
        
        <asp:Button ID="Button1" runat="server" Text="RESET" OnClick="Button1_Click" />
    </form>
  </div>
</div>
    </form>
</body>
</html>
