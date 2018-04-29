<%@ Page Title="Contact Us | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_1626491_CO5027.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    <script src="Scripts/googlemap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
    <h2>Contact Us</h2>
    <p>
        ASDASDASdgijsdvjawi4etjspdofsodgksclgvkgs
    </p>
    <p>
        asdasdasdasdasdasdsaasdasdasdasd</p>
    <p>
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter a name">*</asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="Please enter an email address" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValSubject" runat="server" ErrorMessage="Please enter a Subject" ControlToValidate="txtSubject">*</asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" BorderColor="Black" BorderWidth="1px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValBody" runat="server" ErrorMessage="Please enter a message" ControlToValidate="txtBody">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnSendEmail" runat="server" OnClick="BtnContact_Click" Text="Send" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <div id="map"></div>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAl_dTpeM9vWe7eXl_fFn6an6unXFmIKvY&callback=initMap">
    </script>
    </section>
   
   
</asp:Content>
