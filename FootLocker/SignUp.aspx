<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FootLocker.SignUp" %>
    <asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    
    <style>
        .register-container {
            width: 480px;
            margin: 40px auto;
            background: #111;
            border: 2px solid #e60000;
            padding: 25px;
            border-radius: 15px;
            font-family: 'Segoe UI', sans-serif;
            box-shadow: 0 0 20px rgba(255, 0, 0, 0.4);
            color: #fff;
        }

        .register-container h2 {
            text-align: center;
            color: #e60000;
            margin-bottom: 25px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .register-table {
            width: 100%;
        }

        .register-table td {
            padding: 10px 5px;
            vertical-align: middle;
            font-size: 15px;
        }

        input[type="text"], input[type="password"], select {
            width: 95%;
            padding: 10px;
            background: #222;
            border: 1px solid #e60000;
            color: white;
            border-radius: 5px;
            outline: none;
        }

        input[type="text"]:focus, input[type="password"]:focus, select:focus {
            border-color: #ff1a1a;
            box-shadow: 0 0 10px rgba(255, 0, 0, .4);
        }

        .rbl input {
            margin-right: 5px;
        }

        .btn-register {
            padding: 12px 60px;
            background: #e60000;
            border: none;
            color: #fff;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
        }

        .btn-register:hover {
            background: #ff1a1a;
            box-shadow: 0 0 12px rgba(255, 0, 0, .6);
        }

        .validation-error {
            color: #ff4d4d !important;
            font-size: 13px;
        }
    </style>
</asp:Content>


    <asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  


    <div class="register-container">
        <h2>Register</h2>

        <table class="register-table">

            <tr>
                <td>First Name</td>
                <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
                <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName"
                    CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" /></td>
            </tr>

            <tr>
                <td>Last Name</td>
                <td><asp:TextBox ID="txtLastName" runat="server" /></td>
                <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName"
                    CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" /></td>
            </tr>

            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
                <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                    CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" /></td>
            </tr>

            <tr>
                <td>Re-Password</td>
                <td><asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" /></td>
                <td><asp:CompareValidator runat="server"
                    ControlToValidate="txtRePassword" ControlToCompare="txtPassword"
                    CssClass="validation-error" ErrorMessage="Must Fill / Match" /></td>
            </tr>

            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" />
                    <br />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                        ValidationExpression="\w+@\w+\.\w+"
                        CssClass="validation-error" ErrorMessage="Must fill valid email" ValidationGroup="SignUp" />
                </td>
            </tr>

            <tr>
                <td>Question</td>
                <td>
                    <asp:DropDownList ID="ddlQuestion" runat="server">
                        <asp:ListItem>Choose your Question!</asp:ListItem>
                        <asp:ListItem>Your nickname?</asp:ListItem>
                        <asp:ListItem>Your favorite color?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Answer</td>
                <td><asp:TextBox ID="txtAnswer" runat="server" /></td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtPhone" runat="server" /></td>
                <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                    CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" /></td>
            </tr>

            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="rbl">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td><asp:RequiredFieldValidator runat="server" ControlToValidate="rblGender"
                    CssClass="validation-error" ErrorMessage="Must Fill" ValidationGroup="SignUp" /></td>
            </tr>

            <tr>
                <td>Birthday</td>
                <td>
                    <asp:DropDownList ID="ddlDay" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMonth" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>City</td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td colspan="3" style="text-align:center; padding-top:20px;">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn-register" Text="Register" ValidationGroup="SignUp" OnClick="btnRegister_Click" />
                &nbsp;<br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
    </div>


</asp:Content>
