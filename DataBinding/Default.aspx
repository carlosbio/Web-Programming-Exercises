<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="Cidades" runat="server" AutoPostBack="True">
            <asp:ListItem>Lisboa</asp:ListItem>
            <asp:ListItem>Roma</asp:ListItem>
            <asp:ListItem>Paris</asp:ListItem>
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>New York</asp:ListItem>
        </asp:DropDownList>
        
        <p></p>

        <asp:Label runat="server" id="Cm" Text='<%#"Cidade: " + Cidades.SelectedValue %>'/>  

        <p></p>
        
        <asp:DropDownList ID="dDL" runat="server" AutoPostBack= "true" 
            onselectedindexchanged= "MostrarSeleccao" AppendDataBoundItems= "true" >
            <asp:ListItem> Seleccione... </asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="ddlMunicipios" runat="server" AutoPostBack= "true" 
            onselectedindexchanged= "MostrarSeleccao2" AppendDataBoundItems="true">
            <asp:ListItem> Seleccione... </asp:ListItem>
        </asp:DropDownList>
        
        <p></p>
        
        <asp:Literal ID="saida" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
