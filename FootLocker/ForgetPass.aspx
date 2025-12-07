<%@ Page Title="Forget Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPass.aspx.cs" Inherits="FootLocker.ForgetPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: #000;
            font-family: 'Segoe UI', sans-serif;
        }

        .forget-container {
            width: 450px;
            margin: 60px auto;
            background: #111;
            padding: 35px;
            border-radius: 12px;
            border-top: 3px solid red;
            box-shadow: 0 0 25px rgba(255, 0, 0, 0.4);
        }

        h2 {
            text-align: center;
            color: red;
            margin-bottom: 30px;
            font-size: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        label {
            color: #fff;
            font-size: 16px;
        }

        .txt {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            margin-bottom: 20px;
            background: #222;
            border: 1px solid #444;
            border-radius: 6px;
            color: #fff;
        }

        .txt:focus {
            border-color: red;
            box-shadow: 0 0 10px red;
            outline: none;
        }

        .btn {
            background: red;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 17px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
            margin-bottom: 15px;
        }

        .btn:hover {
            background: #b30000;
            letter-spacing: 1px;
        }

        #lblInfo {
            color: red;
            font-size: 15px;
            margin-top: 10px;
            text-align: center;
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="forget-container">

        <h2>Get Password</h2>

        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" placeholder="Enter your email"></asp:TextBox>

        <asp:Button ID="btnCheck" runat="server" Text="Check" CssClass="btn" OnClick="btnCheck_Click" />

        <label>Password Question</label>
        <asp:TextBox ID="txtQuestion" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>

        <label>Write Your Answer Here</label>
        <asp:TextBox ID="txtAnswer" runat="server" CssClass="txt" placeholder="Enter your answer"></asp:TextBox>

        <asp:Button ID="btnRecovery" runat="server" Text="Recovery" CssClass="btn" OnClick="btnRecovery_Click" />

        <asp:Label ID="lblInfo" runat="server"></asp:Label>

    </div>

</asp:Content>
