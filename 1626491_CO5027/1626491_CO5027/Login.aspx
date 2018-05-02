<%@ Page Title="Login | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1626491_CO5027.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="group1">
    <section class="alt3">
        <h3>Sign In</h3>
        <asp:Label ID="lblUsername" runat="server" Text="Username (Email):" Visible="False"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server" MaxLength="100" placeholder="Email" CssClass="txtBox3"></asp:TextBox>
        <asp:Label ID="lblPassword" runat="server" Text="Password:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" MaxLength="50" placeholder="Password" CssClass="txtBox3"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" CssClass="button3"/>
        <asp:RegularExpressionValidator ID="revLoginEmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtLoginEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        </section>
    <section class="alt3">
        <h3>Create Account</h3>
        <asp:Label ID="Label1" runat="server" Text="Username (Email):" Visible="False"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server" MaxLength="100" placeholder="Email" CssClass="txtBox3"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Password:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" MaxLength="100" placeholder="Password" CssClass="txtBox3"></asp:TextBox>
        <asp:Label ID="lblCnfPassword" runat="server" Text="Confirm password:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtCnfPassword" runat="server" TextMode="Password" MaxLength="100" placeholder="Confirm Password" CssClass="txtBox3"></asp:TextBox>
        <asp:CompareValidator ID="cmpValPassword" runat="server" ControlToCompare="txtRegPassword" ControlToValidate="txtCnfPassword" ErrorMessage="Password not matched!"></asp:CompareValidator>
        <asp:Button ID="btnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" CssClass="button3" />
        <asp:RegularExpressionValidator ID="revRegEmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtRegEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </section>
    </div>
</asp:Content>
