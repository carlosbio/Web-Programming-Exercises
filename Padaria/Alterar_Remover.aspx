<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_Remover.aspx.cs" Inherits="Alterar_Remover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSPadaria %>" DeleteCommand="DELETE FROM [Produtos] WHERE [IdProduto] = @IdProduto" InsertCommand="INSERT INTO [Produtos] ([IdProduto], [Nome], [Tipo], [Preco], [Descricao], [Imagem]) VALUES (@IdProduto, @Nome, @Tipo, @Preco, @Descricao, @Imagem)" SelectCommand="SELECT * FROM [Produtos]" UpdateCommand="UPDATE [Produtos] SET [Nome] = @Nome, [Tipo] = @Tipo, [Preco] = @Preco, [Descricao] = @Descricao, [Imagem] = @Imagem WHERE [IdProduto] = @IdProduto">
            <DeleteParameters>
                <asp:Parameter Name="IdProduto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdProduto" Type="Int32" />
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
                <asp:Parameter Name="Preco" Type="String" />
                <asp:Parameter Name="Descricao" Type="String" />
                <asp:Parameter Name="Imagem" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
                <asp:Parameter Name="Preco" Type="String" />
                <asp:Parameter Name="Descricao" Type="String" />
                <asp:Parameter Name="Imagem" Type="String" />
                <asp:Parameter Name="IdProduto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GvProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduto" DataSourceID="dSProdutos">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IdProduto" HeaderText="IdProduto" ReadOnly="True" SortExpression="IdProduto" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                <asp:BoundField DataField="Imagem" HeaderText="Imagem" SortExpression="Imagem" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
