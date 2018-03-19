<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1626491_CO5027.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username (Email):"></asp:Label>
    <asp:TextBox ID="txtLoginEmail" runat="server" BorderWidth="1px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtLoginPassword" runat="server" BorderWidth="1px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
    <br />
    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
</asp:Content>
