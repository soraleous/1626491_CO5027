<%@ Page Title="Order Summary | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="_1626491_CO5027.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
        <h2>Complete Your Purchase</h2>
        <asp:Literal ID="test1" runat="server"></asp:Literal>
        <asp:Button  ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="BtnConfirmPurchase_Click" CssClass="button3" />
        <asp:Button  ID="btnCancelPurchase" runat="server" Text="Cancel" OnClick="BtnCancelPurchase_Click" CssClass="button3" />
        <asp:Literal ID="litInformation" runat="server"></asp:Literal>
    </section>
</asp:Content>
