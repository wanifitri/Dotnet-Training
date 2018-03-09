<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jquery.aspx.cs" Inherits="shoppingcart.Jquery" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
 
        function myFunction() {
            var y = parseInt(document.getElementById("txt1").value);
            var z = parseInt(document.getElementById("txt2").value);
            var x = y + z;
            document.getElementById("demo").innerHTML = x;
            alert(x);
        }

        function Message() {

            $("#Message").append("Day-" + $("#dateval").val().split('-')[0] + "<br> Month-" + $("#dateval").val().split('-')[1] + "<br> Year-" + $("#dateval").val().split('-')[2] + "<br>");

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
  <input value="Submit" type="button" onclick="myFunction()" />
  <input type="text" id="txt1" name="text1" >         
  <input type="text" id="txt2" name="text2" >
   <p id="demo"></p>
        </div>

        <div>   
    <input type="text" id="dateval" />
 <div id="Message"></div>

        <input type="button" onclick="Message()" value="Submit" />
    </div>
    </form> 
    
</body>
</html>

