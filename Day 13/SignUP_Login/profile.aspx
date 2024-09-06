<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="SignUP_Login.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .auto-style1 {
            width: 500px;
            margin: 0 auto;
            border: 3px ridge #333;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .auto-style2 {
            width: 150px;
            font-weight: bold;
            color: #333;
            vertical-align: middle;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        #NameText, #EmailText, #GenderText, #RoleText, #UserIdText, #PasswordText, #ConfirmPasswordText, input[type="text"], input[type="password"] {
            width: calc(100% - 10px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #Button1, input[type="button"], input[type="submit"] {
            background-color: cornflowerblue;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
            width: 100%;
        }

            #Button1:hover, input[type="button"]:hover, input[type="submit"]:hover {
                background-color: #218838;
            }

        Label, .RequiredFieldValidator {
            font-size: 14px;
            color: #d9534f;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

            a:hover {
                text-decoration: underline;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>YOUR INFORMATION</h2>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">NAME :</td>
                    <td>
                        <asp:TextBox ID="NameText" runat="server" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="NameText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">EMAIL-ID :</td>
                    <td>
                        <asp:TextBox ID="EmailText" runat="server" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Enter Valid Email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">GENDER :</td>
                    <td>
                        <asp:TextBox ID="GenderText" runat="server" Width="183px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="GenderText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">USER ID : </td>
                    <td>
                        <asp:TextBox ID="UserIdText" runat="server" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="UserIdText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ROLE : </td>
                    <td>
                        <asp:TextBox ID="RoleText" runat="server" Width="186px" ReadOnly="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="RoleText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD : </td>
                    <td>
                        <asp:TextBox ID="PasswordText" runat="server" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="PasswordText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CONFIRM PASSWORD : </td>
                    <td>
                        <asp:TextBox ID="ConfirmPasswordText" runat="server" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="RequiredFieldValidator" runat="server" ControlToValidate="ConfirmPasswordText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" CssClass="RequiredFieldValidator" runat="server" ControlToCompare="PasswordText" ControlToValidate="ConfirmPasswordText" Display="Dynamic" ErrorMessage="Give Same Password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>