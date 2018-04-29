<%@ Page Title="Login | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1626491_CO5027.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <asp:Label ID="lblUsername" runat="server" Text="Username (Email):"></asp:Label>
    <asp:TextBox ID="txtLoginEmail" runat="server" BorderWidth="1px"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtLoginPassword" runat="server" BorderWidth="1px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" Width="36px" />
    <br />
    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
</asp:Content>
