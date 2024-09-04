<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SignUP_Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }

    .auto-style1 {
        width: 500px;
        margin: 50px auto;
        border: 2px ridge #333;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    .auto-style2, .auto-style3 {
        width: 150px;
        font-weight: bold;
        color: #333;
    }

    td {
        padding: 10px;
    }

    .auto-style4, .auto-style6 {
        height: 31px;
    }

    .auto-style5 {
        width: 239px;
        height: 28px;
    }

    #PassWordText,#UserText, input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 5px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    #Button1, input[type="button"], input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        margin-top: 10px;
        width: 100%;
    }

    #Button1:hover, input[type="button"]:hover, input[type="submit"]:hover {
        background-color: #45a049;
    }

    #Label1 {
        font-size: 14px;
        color: #ff0000;
    }

    a {
        text-decoration: none;
        color: #007bff;
    }

    a:hover {
        text-decoration: underline;
    }

    input[type="checkbox"] {
        margin-right: 10px;
    }
    .error-message {
    padding: 10px;
    border-radius: 5px;
}

   .success-message {
    padding: 10px;
    border-radius: 5px;
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
                    
                     <input type="checkbox" onchange="document.getElementById('PassWordText').type=this.checked ? 'text' : 'password'" /> Show Password

                </td>
                
                <td>
                    <asp:Button ID="Button1" runat="server" Text="LOG IN" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <a href="SignUp.aspx">New User !! Sign Up Here </a>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
