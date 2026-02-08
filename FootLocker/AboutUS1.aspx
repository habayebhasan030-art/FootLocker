<%@ Page Title="Delete Account" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs"
    Inherits="FootLocker.DeleteAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(135deg, #000000, #1a0000);
        }

        .delete-container {
            background: #0d0d0d;
            border: 2px solid #b30000;
            border-radius: 15px;
            padding: 40px;
            width: 420px;
            margin: 80px auto;
            box-shadow: 0 0 25px rgba(255, 0, 0, 0.4);
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
            margin-bottom: 25px;
        }

        .form-label {
            color: #ffcccc;
            display: block;
            margin-bottom: 8px;
        }

        .form-input {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ff1a1a;
            background: #000;
            color: #fff;
            margin-bottom: 20px;
        }

        .form-input:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(255, 26, 26, 0.6);
        }

        .warning {
            background: #1a0000;
            border: 1px solid #ff1a1a;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 25px;
            text-align: center;
            color: #ff9999;
        }

        .btns {
            display: flex;
            gap: 15px;
        }

        .btn-delete {
            background: #b30000;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            flex: 1;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-delete:hover {
            background: #ff1a1a;
            box-shadow: 0 0 15px rgba(255, 0, 0, 0.7);
        }

        .btn-cancel {
            background: #333;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            flex: 1;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-cancel:hover {
            background: #555;
        }

        .msg {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="delete-container">
        <h1>Delete Account</h1>

        <asp:Label ID="Label1"
            runat="server"
            Text="Email Address"
            CssClass="form-label" />

        <asp:TextBox ID="txtEmail"
            runat="server"
            TextMode="Email"
            CssClass="form-input" />

        <div class="warning">
            ⚠️ Are you sure you want to delete your account?
            <br />
            This action is permanent and cannot be undone.
        </div>

        <div class="btns">
            <asp:Button ID="btnDelete"
                runat="server"
                Text="Yes, Delete"
                CssClass="btn-delete"
                OnClick="btnDelete_Click"
                OnClientClick="return confirm('Are you absolutely sure you want to delete your account?');" />

            <asp:Button ID="btnCancel"
                runat="server"
                Text="No"
                CssClass="btn-cancel"
                OnClick="btnCancel_Click" />
        </div>

        <asp:Label ID="lblMsg"
            runat="server"
            CssClass="msg" />
    </div>

</asp:Content>



