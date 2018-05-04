<%@ Page Title="Admin Database | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1626491_CO5027.Database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
    <h2>Admin Area - Database</h2>
    <asp:GridView ID="DatabaseGridView" runat="server" AutoGenerateColumns="False" CellSpacing="-1" DataKeyNames="ID" DataSourceID="DatabaseGridViewSQL" GridLines="None" CssClass="gridview1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
            <HeaderStyle CssClass="gvText1" />
            <ItemStyle CssClass="gvText1" />
            </asp:BoundField>
            <asp:BoundField DataField="ModelCode" HeaderText="SKU" SortExpression="ModelCode" >
            <HeaderStyle CssClass="gvText1" />
            <ItemStyle CssClass="gvText1" />
            </asp:BoundField>
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" >
            <HeaderStyle CssClass="gvText1" />
            <ItemStyle CssClass="gvText1" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
            <HeaderStyle CssClass="gvText1" />
            <ItemStyle CssClass="gvText1" />
            </asp:BoundField>
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock">
            <HeaderStyle CssClass="gvText1" />
            <ItemStyle CssClass="gvText1" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
            <HeaderStyle CssClass="col1" />
            <ItemStyle CssClass="col1" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True"  >
            <ItemStyle CssClass="button2" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ItemStyle CssClass="button2" />
            </asp:CommandField>
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="Upload.aspx?id={0}" Text="Set Image">
            <ItemStyle CssClass="button2" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DatabaseGridViewSQL" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([Name], [ModelCode], [Size], [Price], [Stock], [Description]) VALUES (@Name, @ModelCode, @Size, @Price, @Stock, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts]" UpdateCommand="UPDATE [tblProducts] SET [Name] = @Name, [ModelCode] = @ModelCode, [Size] = @Size, [Price] = @Price, [Stock] = @Stock, [Description] = @Description WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
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
    <asp:SqlDataSource ID="DatabaseFormViewSQL" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts] WHERE ([ID] = @ID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([Name], [ModelCode], [Size], [Price], [Stock], [Description]) VALUES (@Name, @ModelCode, @Size, @Price, @Stock, @Description)" UpdateCommand="UPDATE [tblProducts] SET [Name] = @Name, [ModelCode] = @ModelCode, [Size] = @Size, [Price] = @Price, [Stock] = @Stock, [Description] = @Description WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
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
        <SelectParameters>
            <asp:ControlParameter ControlID="DatabaseGridView" Name="ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
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
    <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Add Products" CssClass="button3" CausesValidation="false"/>
    <asp:Button ID="BtnLogOut" runat="server" OnClick="BtnLogOut_Click" Text="Logout" CssClass="button3" CausesValidation="false"/>
    </section>
    <section class="alt2">
        <h2>Admin Area | Selected Item Edit</h2>
        <asp:FormView ID="DatabaseFormView" runat="server" DataKeyNames="ID" DataSourceID="DatabaseFormViewSQL" DefaultMode="Edit" RenderOuterTable="False" OnItemUpdated="DatabaseFormView_ItemUpdated">
        <EditItemTemplate>
            <div>
            <asp:Label ID="NameLabel" runat="server" Text="Name:" AssociatedControlID="NameTextBox"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass="txtBox1" MaxLength="100"/>
                <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Please enter the product's name!" ControlToValidate="NameTextBox">*</asp:RequiredFieldValidator>
            </div>
            <div>
            <asp:Label ID="ModelCodeLabel" runat="server" Text="SKU:" AssociatedControlID="ModelCodeTextBox"></asp:Label>
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' CssClass="txtBox1" MaxLength="100"/>
                <asp:RequiredFieldValidator ID="reqValSKU" runat="server" ErrorMessage="Please enter the product's SKU!" ControlToValidate="ModelCodeTextBox">*</asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="SizeLabel" runat="server" Text="Size:" AssociatedControlID="SizeTextBox"></asp:Label>
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' CssClass="txtBox1" MaxLength="50"/>
                <asp:RequiredFieldValidator ID="reqValSize" runat="server" ErrorMessage="Please enter the product's size!" ControlToValidate="SizeTextBox">*</asp:RequiredFieldValidator>
            <div>
            <asp:Label ID="PriceLabel" runat="server" Text="Price:" AssociatedControlID="PriceTextBox"></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' CssClass="txtBox1" MaxLength="20"/>
               <asp:RequiredFieldValidator ID="reqValPrice" runat="server" ErrorMessage="Please enter the product's price!" ControlToValidate="PriceTextBox">*</asp:RequiredFieldValidator>
               <asp:RangeValidator ID="RangeValPrice" runat="server" Type="Currency" MinimumValue="0.01" MaximumValue="999.99" ErrorMessage="Please enter the product's price in the correct format! (0.01 to 999.99)" ControlToValidate="PriceTextBox">*</asp:RangeValidator>            
            </div>
            <div>
            <asp:Label ID="StockLabel" runat="server" Text="Stock:" AssociatedControlID="StockTextBox"></asp:Label>
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' CssClass="txtBox1" MaxLength="20"/>
                <asp:RequiredFieldValidator ID="reqValStock" runat="server" ErrorMessage="Please enter the product's stock amount!" ControlToValidate="StockTextBox">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValStock" runat="server" Type="Integer" MinimumValue="0" MaximumValue="999" ErrorMessage="Please enter the product's stock in the correct format! (0 to 999)" ControlToValidate="StockTextBox">*</asp:RangeValidator>
            </div>
            <div>
            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="DescriptionTextBox" Visible="False"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("Description") %>' CssClass="txtBox2" placeholder="Description" MaxLength="1000"/>
            </div>
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="button2"/>
            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Visible="False" Text="Cancel" CssClass="button2"/>
                <asp:ValidationSummary ID="ValSummaryEdit" runat="server" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:Label ID="NameLabel" runat="server" Text="Name:" AssociatedControlID="NameTextBox"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass="txtBox1"/>
            <asp:Label ID="ModelCodeLabel" runat="server" Text="SKU:" AssociatedControlID="ModelCodeTextBox"></asp:Label>
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' CssClass="txtBox1"/>
            <asp:Label ID="SizeLabel" runat="server" Text="Size:" AssociatedControlID="SizeTextBox"></asp:Label>
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' CssClass="txtBox1"/>
            <asp:Label ID="PriceLabel" runat="server" Text="Price:" AssociatedControlID="PriceTextBox"></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' CssClass="txtBox1"/>
            <asp:Label ID="StockLabel" runat="server" Text="Stock:" AssociatedControlID="StockTextBox"></asp:Label>
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' CssClass="txtBox1"/>
            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="DescriptionTextBox"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' CssClass="txtBox1"/>
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="button2" />
            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="button2" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            SKU:
            <asp:Label ID="ModelCodeLabel" runat="server" Text='<%# Bind("ModelCode") %>' />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            Stock:
            <asp:Label ID="StockLabel" runat="server" Text='<%# Bind("Stock") %>' />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />

            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="button2"/>
            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="button2"/>
            <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="button2"/>

        </ItemTemplate>

    </asp:FormView>
    </section>
</asp:Content>
