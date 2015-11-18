<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p></p>
        <asp:DropDownList ID="ddlDistritos" runat="server" AppendDataBoundItems= "true" 
            onselectedindexchanged="ddlDistritos_SelectedIndexChanged" AutoPostBack= "true">
        </asp:DropDownList>
        &nbsp
        <asp:DropDownList ID="ddlMunicipios" runat="server" AppendDataBoundItems= "true">
        </asp:DropDownList>
        <p></p>
        <asp:Label ID="saida" runat="server"></asp:Label>    
    </div>
    </form>
</body>
</html>
