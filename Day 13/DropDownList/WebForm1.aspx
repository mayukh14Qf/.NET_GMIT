<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DropDownList.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="124px">
                <asp:ListItem Value="-1">Select City</asp:ListItem>
                <asp:ListItem Value="1">Hyderabad</asp:ListItem>
                <asp:ListItem Value="2">Kolkata</asp:ListItem>
                <asp:ListItem Value="3">Odisha</asp:ListItem>
                <asp:ListItem Value="4" Text="Pune"></asp:ListItem>

            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
