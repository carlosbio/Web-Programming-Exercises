<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <h2>Conversão de Moeda</h2>
        </div>
        <div>
            De:<br />
            <asp:TextBox ID="inputTb" runat="server"></asp:TextBox> unidades de 
            <asp:DropDownList ID="unidade1List" runat="server" AutoPostBack="True" OnSelectedIndexChanged="unidade1List_SelectedIndexChanged">
                <asp:ListItem>Seleccione</asp:ListItem>
                <asp:ListItem>Euro EUR</asp:ListItem>
                <asp:ListItem>Dollar USD</asp:ListItem>
                <asp:ListItem>Libra GBP</asp:ListItem>
                <asp:ListItem>Iene JPY</asp:ListItem>
                <asp:ListItem>Franco CHF</asp:ListItem>
            </asp:DropDownList> para 
            <asp:DropDownList ID="unidade2List" runat="server" AutoPostBack="True" OnSelectedIndexChanged="unidade2List_SelectedIndexChanged">
                <asp:ListItem>Seleccione</asp:ListItem>
                <asp:ListItem>Euro EUR</asp:ListItem>
                <asp:ListItem>Dollar USD</asp:ListItem>
                <asp:ListItem>Libra GBP</asp:ListItem>
                <asp:ListItem>Iene JPY</asp:ListItem>
                <asp:ListItem>Franco CHF</asp:ListItem>
            </asp:DropDownList>            
        </div>
        <div>
            <p>
                Cotação: <asp:TextBox ID="cotacaoTb" runat="server" ReadOnly="True"></asp:TextBox>
            </p>
        </div>
        <div>
            Total: 
            <asp:TextBox ID="totalTb" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="totalLabel" runat="server" Text=""></asp:Label>            
        </div>    
    </div>
    </form>
</body>
</html>
