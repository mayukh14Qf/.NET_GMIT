<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShowPasswordCheckBox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 222px;
        }
    </style>
    <script type="text/javascript">
        function showPassword(check) {
            var password = document.getElementById('TextBox1');
            if (check.checked == true) {
                password.setAttribute("type", "text");
            }
            else {
                password.setAttribute("type", "password");
            }
        }
    </script>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><input type="checkbox" onclick="showPassword(this)" /> Show Password</td>
                    <%--<td><input type="checkbox" onchange="document.getElementById('TextBox1').type=this.checked ? 'text' : 'password'" /> Show Password</td>--%>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
