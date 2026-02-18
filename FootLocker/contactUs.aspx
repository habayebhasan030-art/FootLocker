<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site2.Master"
    AutoEventWireup="true" CodeBehind="contactUs.aspx.cs"
    Inherits="FootLocker.contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
body{
    background:#000 !important;
}

.contact-wrapper{
    max-width:750px;
    margin:60px auto;
    background:#111;
    padding:40px;
    border-radius:15px;
    border:2px solid #ff0000;
    box-shadow:0 0 30px rgba(255,0,0,0.4);
    color:white;
}

.contact-wrapper h2{
    text-align:center;
    margin-bottom:30px;
    letter-spacing:3px;
    text-transform:uppercase;
}

.form-control{
    width:100%;
    padding:12px;
    margin-bottom:10px;
    border-radius:8px;
    border:1px solid #333;
    background:#1c1c1c;
    color:white;
}

.form-control:focus{
    border-color:#ff0000;
    box-shadow:0 0 10px #ff0000;
    outline:none;
}

.validation-error{
    color:#ff4d4d;
    font-size:14px;
    margin-bottom:10px;
    display:block;
}

.btn-submit{
    background:#ff0000;
    color:white;
    border:none;
    padding:12px 35px;
    border-radius:30px;
    cursor:pointer;
    font-weight:bold;
    transition:0.3s;
}

.btn-submit:hover{
    background:white;
    color:black;
}

.lblMessage{
    margin-top:20px;
    display:block;
    font-weight:bold;
    text-align:center;
}
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contact-wrapper">

    <h2>Contact Us</h2>

    <!-- Email -->
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
        placeholder="Email Address" TextMode="Email"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
        ControlToValidate="txtEmail"
        ErrorMessage="Email is required"
        CssClass="validation-error"
        Display="Dynamic"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="revEmail" runat="server"
        ControlToValidate="txtEmail"
        ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}"
        ErrorMessage="Invalid email format"
        CssClass="validation-error"
        Display="Dynamic"></asp:RegularExpressionValidator>

    <!-- First Name -->
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"
        placeholder="First Name"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
        ControlToValidate="txtFirstName"
        ErrorMessage="First name is required"
        CssClass="validation-error"
        Display="Dynamic"></asp:RequiredFieldValidator>

    <!-- Last Name -->
    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"
        placeholder="Last Name"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
        ControlToValidate="txtLastName"
        ErrorMessage="Last name is required"
        CssClass="validation-error"
        Display="Dynamic"></asp:RequiredFieldValidator>

    <!-- Subject -->
    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"
        placeholder="Subject"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvSubject" runat="server"
        ControlToValidate="txtSubject"
        ErrorMessage="Subject is required"
        CssClass="validation-error"
        Display="Dynamic"></asp:RequiredFieldValidator>

    <!-- Description -->
    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"
        placeholder="Description" TextMode="MultiLine" Rows="5"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
        ControlToValidate="txtDescription"
        ErrorMessage="Description is required"
        CssClass="validation-error"
        Display="Dynamic"></asp:RequiredFieldValidator>

    <br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

    <asp:Label ID="lblMessage" runat="server" CssClass="lblMessage"></asp:Label>

</div>

</asp:Content>
