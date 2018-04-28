<%@ Page Title="Register | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1626491_CO5027.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <asp:Label ID="lblUsername" runat="server" Text="Username (Email):"></asp:Label>
    <asp:TextBox ID="txtRegEmail" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtRegPassword" runat="server" BorderColor="Black" BorderWidth="1px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="lblCnfPassword" runat="server" Text="Confirm password:"></asp:Label>
    <asp:TextBox ID="txtCnfPassword" runat="server" BorderColor="Black" BorderWidth="1px" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="cmpValPassword" runat="server" ControlToCompare="txtCnfPassword" ControlToValidate="txtRegPassword" ErrorMessage="Password not matched!"></asp:CompareValidator>
    <br />
    <asp:Button ID="btnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
    <br />
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
</asp:Content>
