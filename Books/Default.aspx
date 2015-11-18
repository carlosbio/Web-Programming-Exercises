<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBooks %>" 
            SelectCommand="SELECT Distinct [Category] FROM [Books]">
        </asp:SqlDataSource>

        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Category" DataValueField="Category" AutoPostBack="True" OnTextChanged="ShowBooks">
        </asp:DropDownList>

        <asp:DropDownList ID="ddlBooks" runat="server">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
