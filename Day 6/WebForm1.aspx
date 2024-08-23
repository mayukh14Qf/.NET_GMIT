<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Day_6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="HI, EVERYONE" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#3366FF"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="#99CCFF" ForeColor="#CC0099" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#FF3300" BorderStyle="Dashed" BorderWidth="2px" Height="34px" OnClick="Button1_Click" Text="SUBMIT" Width="87px" />
        <br />

        <%--<h3> Hi, THIS IS Mayukhjit Chakraborty</h3>--%>

        <a href="WebForm2.aspx"> Go To The Second Page</a>

    </form> 
</body>
</html>
