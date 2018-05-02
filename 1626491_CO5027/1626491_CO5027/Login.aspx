<%@ Page Title="Login | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1626491_CO5027.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="group1">
    <section class="alt3">
        <h3>Login</h3>
        <asp:Label ID="lblUsername" runat="server" Text="Username (Email):"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server" BorderStyle="None" MaxLength="100"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revLoginEmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtLoginEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" BorderStyle="None" MaxLength="50"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" Width="50px" CssClass="button1"/>
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        <br />
        </section>
    <aside>
        <h3>Registration</h3>
        <asp:Label ID="Label1" runat="server" Text="Username (Email):"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server" BorderStyle="None" MaxLength="100"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revRegEmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtRegEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" BorderStyle="None" MaxLength="100"></asp:TextBox>
        <br />
        <asp:Label ID="lblCnfPassword" runat="server" Text="Confirm password:"></asp:Label>
        <asp:TextBox ID="txtCnfPassword" runat="server" TextMode="Password" BorderStyle="None" MaxLength="100"></asp:TextBox>
        <asp:CompareValidator ID="cmpValPassword" runat="server" ControlToCompare="txtRegPassword" ControlToValidate="txtCnfPassword" ErrorMessage="Password not matched!"></asp:CompareValidator>
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" CssClass="button1" />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
        <br />
    </aside>
    </div>
</asp:Content>
