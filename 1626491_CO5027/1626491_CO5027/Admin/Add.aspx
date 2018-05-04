<%@ Page Title="Edit | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="_1626491_CO5027.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
        <h2>Admin Area - Add Products</h2>
        <asp:FormView ID="AddDatabaseFormView" runat="server" DataKeyNames="ID" DataSourceID="DatabaseAddFormView" DefaultMode="Insert" RenderOuterTable="False">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                SKU:
                <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                Stock:
                <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
            <div>
            <asp:Label ID="NameLabel" runat="server" Text="Name:" AssociatedControlID="NameTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass="txtBox1" placeholder="Name" MaxLength="100"/>
                <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Please enter the product's name!" ControlToValidate="NameTextBox">*</asp:RequiredFieldValidator>
            </div>
            <div>
            <asp:Label ID="ModelCodeLabel" runat="server" Text="SKU:" AssociatedControlID="ModelCodeTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' CssClass="txtBox1" placeholder="SKU" MaxLength="100"/>
                <asp:RequiredFieldValidator ID="reqValSKU" runat="server" ErrorMessage="Please enter the product's SKU!" ControlToValidate="ModelCodeTextBox">*</asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="SizeLabel" runat="server" Text="Size:" AssociatedControlID="SizeTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' CssClass="txtBox1" placeholder="Size" MaxLength="50"/>
                <asp:RequiredFieldValidator ID="reqValSize" runat="server" ErrorMessage="Please enter the product's size!" ControlToValidate="SizeTextBox">*</asp:RequiredFieldValidator>
            <div>
            <asp:Label ID="PriceLabel" runat="server" Text="Price:" AssociatedControlID="PriceTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' CssClass="txtBox1" placeholder="Price" MaxLength="20"/>
                <asp:RequiredFieldValidator ID="reqValPrice" runat="server" ErrorMessage="Please enter the product's price!" ControlToValidate="PriceTextBox">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValPrice" runat="server" Type="Currency" MinimumValue="0.01" MaximumValue="999.99" ErrorMessage="Please enter the product's price in the correct format! (0.01 to 999.99)" ControlToValidate="PriceTextBox">*</asp:RangeValidator>
            </div>
            <div>
            <asp:Label ID="StockLabel" runat="server" Text="Stock:" AssociatedControlID="StockTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' CssClass="txtBox1" placeholder="Stock" MaxLength="20"/>
                <asp:RequiredFieldValidator ID="reqValStock" runat="server" ErrorMessage="Please enter the product's stock amount!" ControlToValidate="StockTextBox">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValStock" runat="server" Type="Integer" MinimumValue="0" MaximumValue="999" ErrorMessage="Please enter the product's stock in the correct format! (0 to 999)" ControlToValidate="StockTextBox">*</asp:RangeValidator>
            </div>
            <div>
            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="DescriptionTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("Description") %>' CssClass="txtBox2" placeholder="Description (Can be empty)"/>     
            </div>
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="button2" />
            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Visible="False" CssClass="button2"/>
                <asp:ValidationSummary ID="ValSummaryAdd" runat="server" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                SKU:
                <asp:Label ID="ModelCodeLabel" runat="server" Text='<%# Bind("ModelCode") %>' />
                <br />
                Size:
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Stock:
                <asp:Label ID="StockLabel" runat="server" Text='<%# Bind("Stock") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="DatabaseAddFormView" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([Name], [ModelCode], [Size], [Price], [Stock], [Description]) VALUES (@Name, @ModelCode, @Size, @Price, @Stock, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts]" UpdateCommand="UPDATE [tblProducts] SET [Name] = @Name, [ModelCode] = @ModelCode, [Size] = @Size, [Price] = @Price, [Stock] = @Stock, [Description] = @Description WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ModelCode" Type="String" />
                <asp:Parameter Name="original_Size" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ModelCode" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ModelCode" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ModelCode" Type="String" />
                <asp:Parameter Name="original_Size" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>       
        <asp:Button ID="BtnBack" runat="server" Text="Back" CssClass="button2" OnClick="BtnBack_Click" CausesValidation="false"/>
        <asp:Button ID="BtnLogOut" runat="server" OnClick="BtnLogOut_Click" Text="Logout" CssClass="button2" CausesValidation="false"/>
    </section>
</asp:Content>
