﻿<%@ Page Title="Upload | Titleofwebsite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="_1626491_CO5027.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <br />
    <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Upload" />
    <br />
    <asp:Image ID="CurrentImage" runat="server" Height="156px" Width="151px" />
    <br />
    </section>
</asp:Content>
