<%@ Page Title="Upload | Titleofwebsite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="_1626491_CO5027.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceholder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <section class="alt2">
        <h2>Admin Area - Image Uploads</h2>
        <br />
        <asp:FormView ID="ULFormView" runat="server" DataSourceID="UploadFormView">
            <EditItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ModelCode:
                <asp:TextBox ID="ModelCodeTextBox" runat="server" Text='<%# Bind("ModelCode") %>' />
                <br />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                SKU:
                <asp:Label ID="ModelCodeLabel" runat="server" Text='<%# Bind("ModelCode") %>' />
                <br />
                Size:
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="UploadFormView" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [Name], [ModelCode], [Size] FROM [tblProducts] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <br />
    <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Upload" CssClass="button2" />
    <br />
        <p>Image Preview:</p>
    <asp:Image ID="CurrentImage" runat="server" Height="250px" Width="250px" />
        <br />
        <asp:Button ID="BtnBack" runat="server" Text="Back" CssClass="button2" OnClick="BtnBack_Click" />
    <asp:Button ID="BtnLogOut" runat="server" OnClick="BtnLogOut_Click" Text="Logout" CssClass="button2" />
    </section>
</asp:Content>
