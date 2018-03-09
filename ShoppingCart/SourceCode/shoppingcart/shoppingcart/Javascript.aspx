<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="shoppingcart.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Message()
        {
            alert(document.getElementById("txtMessage").value) ;
        }
 </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <input id="Text1" id="txtMessage" />
        <input id="Button1" onclick="Message()" value="Submit" />
    </div>
    </form>
</body>
</html>
