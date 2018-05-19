<%-- BeginRegion --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Grid_Binding_CompositeKey_CompositeKey" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Composite key</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CompositeKey" 
        OnCustomUnboundColumnData="grid_CustomUnboundColumnData" Width="100%" AutoGenerateColumns="False">
        <Columns>
            <dxwgv:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
            </dxwgv:GridViewCommandColumn>
            <dxwgv:GridViewDataColumn FieldName="CompositeKey" VisibleIndex="1" UnboundType="String">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="CompanyName" VisibleIndex="2">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="City" VisibleIndex="3">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Region" VisibleIndex="4">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Country" VisibleIndex="5">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Quantity" VisibleIndex="6" Name="Quantity">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="7">
                <PropertiesTextEdit DisplayFormatString="c">
                </PropertiesTextEdit>
            </dxwgv:GridViewDataTextColumn>
        </Columns>
        <Settings ShowGroupPanel="True" />
    </dxwgv:ASPxGridView>
    <%-- BeginRegion DataSource --%>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT [Customers.CompanyName] AS CompanyName, [CustomerID], [City], [Region], [Country], [Salesperson], [OrderID], [OrderDate], [ProductID], [ProductName], [UnitPrice], [Quantity], [Discount], [ExtendedPrice], [Freight] FROM [Invoices]">
    </asp:AccessDataSource>
    <%-- EndRegion --%>
    </form>
</body>
</html>
