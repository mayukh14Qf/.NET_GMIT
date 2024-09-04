<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SignUP_Login.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .header {
            background-color: #4A3C8C;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .sidebar {
            width: 200px;
            background-color: #333;
            position: fixed;
            height: 100%;
            padding-top: 20px;
        }

            .sidebar a {
                padding: 10px 15px;
                text-decoration: none;
                font-size: 18px;
                color: white;
                display: block;
            }

                .sidebar a:hover {
                    background-color: #575757;
                }

        .content {
            margin-left: 220px;
            padding: 20px;
        }

        .welcome-message {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .grid-container {
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

            .grid-container h2 {
                margin-top: 0;
                color: #4A3C8C;
            }

            .grid-container .grid {
                width: 100%;
                margin-top: 20px;
            }

                .grid-container .grid .grid-header {
                    background-color: #4A3C8C;
                    color: white;
                    text-align: left;
                    padding: 10px;
                }

                .grid-container .grid .grid-row {
                    background-color: #DEDFDE;
                    color: black;
                    padding: 10px;
                    border-bottom: 1px solid #ddd;
                }

                    .grid-container .grid .grid-row:nth-child(even) {
                        background-color: #f9f9f9;
                    }

                    .grid-container .grid .grid-row:hover {
                        background-color: #f1f1f1;
                    }

                .grid-container .grid .grid-footer {
                    background-color: #C6C3C6;
                    color: black;
                    text-align: right;
                    padding: 10px;
                }

        .edit-button {
            background-color: #4A3C8C;
            color: white;
            padding: 5px 10px;
            margin: 2px;
            border-radius: 3px;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }

            .edit-button:hover {
                background-color: #33276A;
            }


        .delete-button {
            background-color: #b20000;
            color: white;
            padding: 5px 10px;
            margin: 2px;
            border-radius: 3px;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }

            .delete-button:hover {
                background-color: #800000;
            }


        .update-button {
            background-color: #28a745;
            color: white;
            padding: 5px 10px;
            margin: 2px;
            border-radius: 3px;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }

            .update-button:hover {
                background-color: #218838;
            }


        .cancel-button {
            background-color: #dc3545;
            color: white;
            padding: 5px 10px;
            margin: 2px;
            border-radius: 3px;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }

            .cancel-button:hover {
                background-color: #c82333;
            }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="header">
            <h1>Dashboard</h1>
        </div>
        <div class="sidebar">
            <a href="#">Home</a>
            <a href="#">Profile</a>
            <a href="#">Settings</a>
            <a href="WebForm1.aspx">Log Out</a>
        </div>
        <div class="content">
            <div class="welcome-message">
                HELLO, WELCOME TO THE PAGE
            </div>
            <div class="grid-container">
                <h2>User Information</h2>
                <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" CssClass="grid" DataSourceID="SqlDataSource1" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                    <HeaderStyle CssClass="grid-header" />
                    <RowStyle CssClass="grid-row" />
                    <FooterStyle CssClass="grid-footer" />
                </asp:GridView>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbrole %>"
            DeleteCommand="DELETE FROM [signup1] WHERE [Id] = @Id"
            InsertCommand="INSERT INTO [signup1] ([name], [email], [gender], [userid], [role], [password]) VALUES (@name, @email, @gender, @userid, @role, @password)"
            SelectCommand="SELECT * FROM [signup1]"
            UpdateCommand="UPDATE [signup1] SET [name] = @name, [email] = @email, [gender] = @gender, [userid] = @userid, [role] = @role, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

