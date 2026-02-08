<%@ Page Title="Update Profile" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs"
    Inherits="FootLocker.UpdateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(135deg, #000000, #1a0000);
        }

        .profile-container {
            width: 520px;
            margin: 60px auto;
            background: #0d0d0d;
            border: 2px solid #b30000;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 0 30px rgba(255,0,0,.4);
            color: #fff;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            color: #ff1a1a;
            margin-bottom: 30px;
        }

        .row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 18px;
        }

        .label {
            width: 35%;
            color: #ffcccc;
        }

        .input {
            width: 60%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ff1a1a;
            background: #000;
            color: #fff;
        }

        .input:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(255,0,0,.6);
        }

        .error {
            color: #ff4d4d;
            font-size: 12px;
            margin-left: 35%;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .btns {
            text-align: center;
            margin-top: 25px;
        }

        .btn-update {
            background: #b30000;
            color: #fff;
            border: none;
            padding: 12px 35px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-update:hover {
            background: #ff1a1a;
            box-shadow: 0 0 15px rgba(255,0,0,.7);
        }

        .msg {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-container">
        <h1>User Profile / Update User</h1>

        <div class="row">
            <asp:Label Text="First Name" runat="server" CssClass="label" />
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="input" />
        </div>
        <asp:RequiredFieldValidator ControlToValidate="txtFirstName"
            ErrorMessage="Must Fill"
            CssClass="error" runat="server" />

        <div class="row">
            <asp:Label Text="Last Name" runat="server" CssClass="label" />
            <asp:TextBox ID="txtLastName" runat="server" CssClass="input" />
        </div>
        <asp:RequiredFieldValidator ControlToValidate="txtLastName"
            ErrorMessage="Must Fill"
            CssClass="error" runat="server" />

        <div class="row">
            <asp:Label Text="Password" runat="server" CssClass="label" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input" />
        </div>
        <asp:RequiredFieldValidator ControlToValidate="txtPassword"
            ErrorMessage="Must Fill"
            CssClass="error" runat="server" />

        <div class="row">
            <asp:Label Text="Re-Password" runat="server" CssClass="label" />
            <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" CssClass="input" />
        </div>
        <asp:CompareValidator ControlToValidate="txtRePassword"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords not match"
            CssClass="error" runat="server" />

        <div class="row">
            <asp:Label Text="Email" runat="server" CssClass="label" />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input" />
        </div>
        <asp:RequiredFieldValidator ControlToValidate="txtEmail"
            ErrorMessage="Must Fill"
            CssClass="error" runat="server" />

        <div class="row">
            <asp:Label Text="Phone Number" runat="server" CssClass="label" />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="input" />
        </div>
        <asp:RequiredFieldValidator ControlToValidate="txtPhone"
            ErrorMessage="Must Fill"
            CssClass="error" runat="server" />

        <div class="btns">
            <asp:Button ID="btnUpdate"
                runat="server"
                Text="Update"
                CssClass="btn-update"
                OnClick="btnUpdate_Click" />
        </div>

        <asp:Label ID="lblMsg" runat="server" CssClass="msg" />
    </div>

</asp:Content>

