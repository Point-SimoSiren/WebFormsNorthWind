<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsNorthWind._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Oy Northwind Ab</h1>
    <h2>Tietojärjestelmä</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="245px" Width="436px">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:northwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitsInStock], [UnitsOnOrder], [SupplierID] FROM [Alphabetical list of products]"></asp:SqlDataSource>
</p>
<p>&nbsp;</p>

</asp:Content>
