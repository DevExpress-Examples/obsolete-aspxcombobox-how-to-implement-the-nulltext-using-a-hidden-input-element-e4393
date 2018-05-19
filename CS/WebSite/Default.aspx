<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridLookup" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Src="NullTextUserControl.ascx" TagName="NullTextUserControl" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxComboBox - How to implement NullText</title>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/ScriptFile.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <dx:ASPxComboBox ID="dxComboTheme" ClientInstanceName="clientComboTheme" runat="server">
                <Items>
                    <dx:ListEditItem Text="Default" Value="Default"/>
                    <dx:ListEditItem Text="Aqua" Value="Aqua"/>
                    <dx:ListEditItem Text="SoftOrange" Value="SoftOrange"/>
                </Items>
                <ClientSideEvents SelectedIndexChanged="OnComboTheme_SelectedIndexChanged" />
            </dx:ASPxComboBox>
        </div>
        <div>
            <dx:NullTextUserControl ID="NullTextComboBox" runat="server"/>
            <dx:ASPxComboBox ID="dxCombo" ClientInstanceName="clientCombo" ClientVisible="false" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                DataSourceID="dsProducts" EnableIncrementalFiltering="True" TextField="ProductName" ValueField="ProductID" ValueType="System.Int32">
                <ClientSideEvents LostFocus="OnCtrl_LostFocus" Init="OnCtrl_Init" />
            </dx:ASPxComboBox>
        </div>
        <div>
            <input type="button" value="Clear Text" onclick="OnBtn_Click();" />
            <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
