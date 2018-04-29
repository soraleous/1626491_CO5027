<%@ Page Title="Edit | HyperPadz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="_1626491_CO5027.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
    <asp:FormView ID="DatabaseFormView" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" DefaultMode="Insert" RenderOuterTable="False">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ModelCode:
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
            <br />
            Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ModelCode:
            <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
            <br />
            Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ModelCode:
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
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock" InsertCommand="INSERT INTO [tblProducts] ([Name], [ModelCode], [Size], [Price], [Stock]) VALUES (@Name, @ModelCode, @Size, @Price, @Stock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts]" UpdateCommand="UPDATE [tblProducts] SET [Name] = @Name, [ModelCode] = @ModelCode, [Size] = @Size, [Price] = @Price, [Stock] = @Stock WHERE [ID] = @original_ID AND [Name] = @original_Name AND [ModelCode] = @original_ModelCode AND [Size] = @original_Size AND [Price] = @original_Price AND [Stock] = @original_Stock">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ModelCode" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Stock" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ModelCode" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Stock" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ModelCode" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Stock" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ModelCode" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Stock" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </section>
</asp:Content>
