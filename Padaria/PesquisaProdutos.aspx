<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PesquisaProdutos.aspx.cs" Inherits="PesquisaProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSPadaria %>" SelectCommand="SELECT * FROM [Produtos] WHERE ([Tipo] LIKE '%' + @Tipo + '%')" OnSelected="dSProdutos_Selected">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxPadaria" Name="Tipo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:TextBox ID="TextBoxPadaria" runat="server"></asp:TextBox>

        <asp:GridView ID="GVProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduto" DataSourceID="dSProdutos">
            <Columns>
                <asp:BoundField DataField="IdProduto" HeaderText="IdProduto" ReadOnly="True" SortExpression="IdProduto" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                <asp:BoundField DataField="Imagem" HeaderText="Imagem" SortExpression="Imagem" />
            </Columns>
        </asp:GridView>

        <asp:Label ID="LabelPadaria" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>
