<%@ Page Title="Home | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1626491_CO5027.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<section class="alt2">
    <h2>My Page Content</h2>
    <p>Unfinished!</p>
    <asp:Repeater ID="rptrProducts" runat="server" DataSourceID="HomeRepeaterSQL">
    <HeaderTemplate><div id="RepeaterHeader"></HeaderTemplate>
        <ItemTemplate>
            <div class="RepeaterItem">
                <a href="<%# Eval("ID", "Product.aspx?ID={0}") %>">
                    <%#Eval ("Name") %>
                    <%#Eval ("Size") %>
                    <img src="ProductImages/<%#Eval("ID") %>.jpg" width="100" height="100" />
                    $<%#Eval ("Price") %>

                </a>
            </div>
        </ItemTemplate>
        <FooterTemplate></div></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="HomeRepeaterSQL" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProducts]"></asp:SqlDataSource>
</section>
</asp:Content>
