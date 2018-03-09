<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="shoppingcart.Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home1</title>
    <link href="style2.css" rel="stylesheet" />
</head>
<body>


    <form id="form2" runat="server">


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
                    <div class="list">
                        <div id="EmptyCart" runat="server">
                            Cart Empty!
                        </div>
                        <div id="CartItems" runat="server">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Product</th>
                                        <th>Price (RM)</th>
                                        <th>Quantity</th>
                                        <th>Total (RM)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <asp:Repeater ID="CartList" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <div class="p_image">
                                                        <img src='<%#Eval("ProductImage") %>' />
                                                    </div>
                                                </td>

                                                <td><span><%#Eval("ProductName")%></span></td>
                                                <td><%#Eval("ProductPrice")%></td>
                                                <td><%#Eval("Quantity")%></td>
                                                <td><%#Eval("Total")%></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                            <div class="checkout">
                                <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="Button10_Click" />
                            </div>
                        </div>

                    </div>





                </div>

            </div>
        </div>


    </form>


</body>
</html>
