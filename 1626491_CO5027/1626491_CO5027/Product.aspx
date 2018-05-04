<%@ Page Title="Product Details | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="_1626491_CO5027.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="column left">
            <asp:Image ID="CurrentImage" runat="server" Height="250px" Width="250px" CssClass="img2"/>
        </div>
        <div class="column right">
        <asp:FormView ID="ProductFormView" runat="server" DataSourceID="ViewProductFormView">
        <EditItemTemplate>
            <asp:Label ID="NameLabel" runat="server" Text="Name:" AssociatedControlID="NameTextBox"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:Label ID="ModelCodeLabel" runat="server" Text="SKU:" AssociatedControlID="ModelCodeTextBox"></asp:Label>
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
            <asp:Label ID="SizeLabel" runat="server" Text="Size:" AssociatedControlID="SizeTextBox"></asp:Label>
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <asp:Label ID="PriceLabel" runat="server" Text="Price:" AssociatedControlID="PriceTextBox"></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:Label ID="StockLabel" runat="server" Text="Stock:" AssociatedControlID="StockTextBox"></asp:Label>
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="DescriptionTextBox"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:Label ID="NameLabel" runat="server" Text="Name:" AssociatedControlID="NameTextBox"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:Label ID="ModelCodeLabel" runat="server" Text="SKU:" AssociatedControlID="ModelCodeTextBox"></asp:Label>
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
            <asp:Label ID="SizeLabel" runat="server" Text="Size:" AssociatedControlID="SizeTextBox"></asp:Label>
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <asp:Label ID="PriceLabel" runat="server" Text="Price:" AssociatedControlID="PriceTextBox"></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:Label ID="StockLabel" runat="server" Text="Stock:" AssociatedControlID="StockTextBox"></asp:Label>
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="DescriptionTextBox"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <h3><asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' /></h3>           
            <h4>SKU: <asp:Label ID="ModelCodeLabel" runat="server" Text='<%# Bind("ModelCode") %>' /></h4>         
            <h4>Size: <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' /></h4>        
            <h4>Price: $<asp:Label ID="PriceLabel" runat="server" Text= '<%# Bind("Price") %>' /></h4>
            <h4>Stock: <asp:Label ID="StockLabel" runat="server" Text='<%# Bind("Stock") %>' /></h4>           
            <h4>Description:</h4>
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>'  Visible="false"/>    
        </ItemTemplate>
    </asp:FormView>
        <asp:Label ID="test1" runat="server" text=""></asp:Label>
        <p>*Postage and Packaging charges of $4.99 will be applied to your order.</p>
        <h4><asp:Label ID="QuantityLabel" runat="server" Text="Quantity:"></asp:Label>
        <asp:DropDownList ID="ddlProductQuantity" runat="server" CssClass="txtBox4">
        </asp:DropDownList>
        </h4>

    <asp:SqlDataSource ID="ViewProductFormView" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [Name], [ModelCode], [Size], [Price], [Stock], [Description] FROM [tblProducts] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

        <asp:Button ID="btnPurchaseProduct" runat="server" OnClick="BtnPurchaseProduct_Click" Text="Buy Now" CssClass="button1" />
        </div>
    </div>
</asp:Content>
