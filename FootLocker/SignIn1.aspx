<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignIn1.aspx.cs" Inherits="FootLocker.SignIn1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: #000;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-container {
            width: 380px;
            margin: 70px auto;
            background: #111;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(255, 0, 0, 0.4);
            border-top: 3px solid red;
        }

        h2 {
            text-align: center;
            color: red;
            margin-bottom: 25px;
            font-size: 32px;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        label {
            color: #fff;
            font-size: 16px;
        }

        .txt {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            background: #222;
            border: 1px solid #444;
            color: #fff;
            border-radius: 6px;
        }

        .txt:focus {
            border-color: red;
            box-shadow: 0 0 8px red;
            outline: none;
        }

        .btn-login {
            width: 100%;
            background: red;
            color: #fff;
            padding: 12px;
            border: none;
            margin-top: 20px;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-login:hover {
            background: #b30000;
            letter-spacing: 1px;
        }

        .links {
            margin-top: 20px;
            text-align: center;
        }

        .links a {
            color: red;
            text-decoration: none;
            font-size: 15px;
        }

        .links a:hover {
            text-decoration: underline;
        }

        #lblMsg {
            font-size: 15px;
            margin-bottom: 15px;
            display: block;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-container">

        <h2>Sign In</h2>

        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Enter your email"></asp:TextBox>

        <br /><br />

        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter your password"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn-login" OnClick="btnLogin_Click" />

        <div class="links">
            <a href="Register.aspx">Create New Account</a>
            <br />
            <a href="ForgetPass.aspx">Forgot Password?</a>
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
        </div>

    </div>

</asp:Content>

