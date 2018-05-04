<%@ Page Title="Home | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1626491_CO5027.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">   
    <h2>Welcome to HyperPadz Store!</h2>
        <h3 class="hidden">Mousepads Listed Below</h3>
    <asp:Repeater ID="rptrProducts" runat="server" DataSourceID="HomeRepeaterSQL">
    <HeaderTemplate><div id="RepeaterHeader"></HeaderTemplate>
        <ItemTemplate>
            <div class="RepeaterItem">
                <a href="<%# Eval("ID", "Product.aspx?ID={0}") %>">
                    <img src="ProductImages/<%#Eval("ID") %>.jpg" width="200" height="150" class="img1" alt="<%#Eval ("Name") %> Image" />
                    <h4><%#Eval ("Name") %> <%#Eval ("Size") %>  </h4>         
                    <h4>$<%#Eval ("Price") %></h4>
                </a>
            </div>
        </ItemTemplate>
        <FooterTemplate></div></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="HomeRepeaterSQL" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProducts] WHERE ([Stock] &gt; @Stock)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Stock" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
</section>
</asp:Content>
