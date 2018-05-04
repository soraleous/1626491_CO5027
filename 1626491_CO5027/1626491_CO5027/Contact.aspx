<%@ Page Title="Contact Us | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_1626491_CO5027.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
    <script src="Scripts/googlemap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
    <h2>Contact Us</h2>
    <p>For All Inquiries, Please use the Contact Form below :-</p>
        <asp:Label ID="lblName" runat="server" Text="Name:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" CssClass="txtBox1" placeholder="Name" MaxLength="100"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter a name">*</asp:RequiredFieldValidator>
    <p>
        <asp:Label ID="lblEmail" runat="server" Text="Email:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBox1" placeholder="Email" MaxLength="100"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revLoginEmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="Please enter an email address" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblSubject" runat="server" Text="Subject:" Visible="False"></asp:Label>
        <asp:DropDownList ID="ddltxtSubject" runat="server" CssClass="txtBox1">
            <asp:ListItem>Product Inquiry</asp:ListItem>
            <asp:ListItem>Product Returns</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="reqValSubject" runat="server" ErrorMessage="Please select a subject" ControlToValidate="ddltxtSubject">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server" Text="Message:" Visible="False"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" CssClass="txtBox2" placeholder="Message" MaxLength="1000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValBody" runat="server" ErrorMessage="Please enter a message" ControlToValidate="txtBody">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnSendEmail" runat="server" OnClick="BtnContact_Click" Text="Send" CssClass="button1" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
    <asp:ValidationSummary ID="ValSumContact" runat="server" />
    <div id="map">
        <img class="staticmap" src="https://maps.googleapis.com/maps/api/staticmap?center=4.885502,114.931423&zoom=18&scale=1&size=600x400&maptype=roadmap&format=png&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C4.885502,114.931423&key=AIzaSyDQ8rJ51e8SfgFDOAf-kc3MdCJ-arDiB2I" 
            alt="HyperPadz Google Maps Static Image" />
    </div>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAl_dTpeM9vWe7eXl_fFn6an6unXFmIKvY&callback=initMap">
    </script>
    </section>
   
   
</asp:Content>
