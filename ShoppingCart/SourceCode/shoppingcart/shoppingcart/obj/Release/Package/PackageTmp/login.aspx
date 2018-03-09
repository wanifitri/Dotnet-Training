<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="shoppingcart.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>login</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="outer">
        <h3>Shopping cart </h3>
        <div class="Login">
            <div class="username">
                <asp:Label ID="label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="btnlogin"> 
                    <asp:Button ID="loginbutton" runat="server" Text="login" OnClick="loginbutton_Click" />
                </div>
           

            <div class="status">
                <asp:Label ID="status" runat="server" Text=""></asp:Label>
            </div>
    </div>

         </div>
    </form>
</body>
</html>
