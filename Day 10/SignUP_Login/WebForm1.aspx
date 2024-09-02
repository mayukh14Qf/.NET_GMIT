<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SignUP_Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            margin:auto;
            border:2px ridge black;
        }
        .auto-style2 {
            width: 239px;
        }
        h2{
            text-align:center;
        }
        .auto-style3 {
            width: 239px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>LOG IN FORM </h2>
        <table cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">USER ID : </td>
                <td>
                    <asp:TextBox ID="UserText" runat="server" Width="198px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">PASSWORD:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="PassWordText" runat="server" Width="198px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassWordText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="SHOW PASSWORD " />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="LOG IN" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <a href="SignUp.aspx">New User !! Sign Up Here </a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
