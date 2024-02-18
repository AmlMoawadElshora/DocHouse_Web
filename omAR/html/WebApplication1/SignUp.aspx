<%@ Page Language="C#" AutoEventWireup="true"  UnobtrusiveValidationMode="none" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>DocHouse</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/signup.css" rel="stylesheet" type="text/css" media="all" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
<div class="main-w3layouts wrapper">
		<h1> SignUp </h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
			
					<asp:TextBox ID="uuu" runat="server" CssClass="text" placeholder="Username"  ></asp:TextBox> 
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="uuu" ForeColor="red"></asp:RequiredFieldValidator>
				&nbsp &nbsp&nbsp&nbsp
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter letters only" ForeColor="red" ControlToValidate="uuu" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

						<asp:TextBox ID="eee" runat="server" CssClass="text email" placeholder="Email"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="eee" ForeColor="red"></asp:RequiredFieldValidator>
					&nbsp &nbsp&nbsp&nbsp	
					<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please enter a valid email" ForeColor="red" ControlToValidate="eee" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


					<asp:TextBox ID="pp" runat="server" CssClass="text" TextMode="Password" placeholder="Password"></asp:TextBox>
			        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="pp" ForeColor="red"></asp:RequiredFieldValidator>
					&nbsp &nbsp&nbsp&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="red" ErrorMessage="please enter numbers only" ControlToValidate="pp" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>


					<asp:TextBox ID="ppp" runat="server" CssClass="text w3lpass" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="ppp" ForeColor="red"></asp:RequiredFieldValidator> &nbsp &nbsp&nbsp&nbsp
					<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="two passwords don't match" ControlToValidate="pp" ControlToCompare="ppp" ForeColor="red"></asp:CompareValidator>
					<br>
					<br>


                    <label id="security">Select a security question</label>
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
					<br>

					<asp:TextBox ID="answer" CssClass="text" runat="server" placeholder="Your answer"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="answer" ForeColor="red"></asp:RequiredFieldValidator>
					&nbsp &nbsp&nbsp&nbsp
					<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="please enter letters only" ForeColor="red" ControlToValidate="answer" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
					<br>

					<br />
					<div class="wthree-text">
						<label class="anim">
							<asp:CheckBox ID="CheckBox"  CssClass="checkbox" runat="server" />
							<span>I Agree To The Terms & Conditions</span>
							<br>
					<asp:CustomValidator EnableClientScript="true" ID="CustomValidator1" ClientValidationFunction="EmptyCheck"
runat="server" ErrorMessage="Required" ForeColor="red" />


						</label>
						<div cssclass="clear"> </div>
					</div>
				<asp:Button ID="signUpp" runat="server" Text="SIGNUP" OnClick="signUpp_Click" />
				</form>
				<p>Already have an Account? <a href="Log%20in.aspx"> Login Now!</a></p>
			</div>
		</div>
	</div>
    </form>
	<script type="text/javascript" language="javascript">


        function EmptyCheck(sender, args) {



            if (document.getElementById('<%= CheckBox.UniqueID %>').checked == false)



                args.IsValid = false;


            else



                args.IsValid = true;


        }


    </script>


</body>
</html>


