<%@ Page Title="Login | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1626491_CO5027.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="group1">
    <section class="alt3">
        <h3>Login</h3>
        <asp:Label ID="lblUsername" runat="server" Text="Username (Email):"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server" BorderStyle="None"></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" Width="50px" />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        </section>
    <aside>
        <h3>Registration</h3>
        <asp:Label ID="Label1" runat="server" Text="Username (Email):"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server" BorderStyle="None"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
        <br />
        <asp:Label ID="lblCnfPassword" runat="server" Text="Confirm password:"></asp:Label>
        <asp:TextBox ID="txtCnfPassword" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
        <asp:CompareValidator ID="cmpValPassword" runat="server" ControlToCompare="txtRegPassword" ControlToValidate="txtCnfPassword" ErrorMessage="Password not matched!"></asp:CompareValidator>
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </aside>
    </div>
</asp:Content>
