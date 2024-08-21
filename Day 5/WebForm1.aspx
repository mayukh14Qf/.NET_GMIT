<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GMIT_ASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            height: 28px;
            width: 118px;
        }
        .auto-style4 {
            width: 118px;
        }
        .auto-style5 {
            height: 73px;
        }
        .auto-style6 {
            height: 73px;
            width: 118px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">STUDENT ID</td>
                    <td class="auto-style2">STUDENT NAME</td>
                    <td class="auto-style3">ROLL NO</td>
                </tr>
                <tr>
                    <td class="auto-style2">0</td>
                    <td class="auto-style2">pqr</td>
                    <td class="auto-style3">11</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>abc</td>
                    <td class="auto-style4">14</td>
                </tr>
                <tr>
                    <td class="auto-style5">2</td>
                    <td class="auto-style5">xyz</td>
                    <td class="auto-style6">15
                    </td>
                </tr>
            </table>

            <br />
<br />
            

            <asp:Label ID="Label1" runat="server" Text="Label">Enter Your Text</asp:Label>


            <br />
            <br />

            <asp:Button ID="Button1" runat="server" ForeColor="#FF3399" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />


        </div>
    </form>
</body>
</html>
