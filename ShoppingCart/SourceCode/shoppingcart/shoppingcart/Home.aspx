<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="shoppingcart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
    <link href="style2.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
          <div class="login">
          <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click1" />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
        <div class="outer">
            <div class="header">
                <div id="logo_text">
                    <h1>Shopping cart</h1>
                </div>

                <div id="menubar">
                    <ul id="menu">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Home1.aspx">Shopping cart</a></li>
                    </ul>
                </div>
                <div class="content">
                    <asp:Repeater ID="productList" runat="server">
                        <ItemTemplate>
                            <div class="product">
                                <div class="p_image">
                                    <img src="<%#Eval("ProductImage") %>" />
                                </div>
                                <div class="p_name"><span><%#Eval("ProductName")%></span></div>
                                <div class="p_price"><%#Eval("ProductPrice")%></div>
                                <div class="p_cart"></div>
                                <asp:Button ID="btnAddtoCart" OnCommand="btnAddtoCart_Command"
                                    CommandArgument =' <%#Eval("ProductId") %>'
                                     runat="server" Text="Add to cart" />
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
                     
                 
                </div>




            </div>
        </div>
       

    </form>
</body>
</html>
