<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="_1626491_CO5027.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
        <h2>Complete Your Purchase</h2>
        <asp:Button  ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="BtnConfirmPurchase_Click" />
        <asp:Literal ID="litInformation" runat="server"></asp:Literal>
    </section>
</asp:Content>
