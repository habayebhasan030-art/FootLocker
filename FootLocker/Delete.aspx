<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="FootLocker.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <div style="width:450px; margin:60px auto; padding:20px; border:1px solid gray;">

        <h2>Delete Account</h2>

        <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txt" runat="server" Width="250px"></asp:TextBox>

        <br /><br />

        <asp:Button ID="btnDelAcc" runat="server"
            Text="Del Account"
            OnClick="btnDelAcc_Click" />

        <br /><br />

        <asp:Label ID="lblSure" runat="server"
            Text="Are you sure?"
            Visible="false"
            ForeColor="Red">
        </asp:Label>

        <br /><br />

        <asp:Button ID="yesbtn" runat="server"
            Text="Yes"
            OnClick="btnYes_Click"
            Visible="false" style="height: 26px" />

        <asp:Button ID="btnNo" runat="server"
            Text="No"
            OnClick="btnNo_Click"
            Visible="false" />

        <br /><br />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Blue"></asp:Label>

    </div>
</asp:Content>
