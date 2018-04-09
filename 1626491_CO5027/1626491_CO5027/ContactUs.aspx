<%@ Page Title="Contact Us | Titleofwebsite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="_1626491_CO5027.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h2>Contact Us</h2>
    <p>
        ASDASDASdgijsdvjawi4etjspdofsodgksclgvkgs
    </p>
    <p>
        asdasdasdasdasdasdsaasdasdasdasd</p>
    <p>
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" BorderColor="Black" BorderWidth="1px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSendEmail" runat="server" OnClick="Button1_Click" Text="Send" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
   
</asp:Content>
