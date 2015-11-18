<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pesquisa.aspx.cs" Inherits="Gestao_Pesquisa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><h3>Gestão da Padaria - Pesquisa de Produtos</h3></p>
    <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSPadaria %>" SelectCommand="SELECT * FROM [Produtos] WHERE ([Tipo] LIKE '%' + @Tipo + '%')" OnSelected="dSProdutos_Selected">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxPadaria" Name="Tipo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <div><asp:TextBox ID="TextBoxPadaria" runat="server"></asp:TextBox></div>

        <div><p><asp:Label ID="LabelPadaria" runat="server" Text=""></asp:Label></p></div>

        <div>
            <asp:GridView ID="GVProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduto" DataSourceID="dSProdutos" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdProduto" HeaderText="IdProduto" ReadOnly="True" SortExpression="IdProduto" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                    <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                    <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                    <asp:BoundField DataField="Imagem" HeaderText="Imagem" SortExpression="Imagem" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
</asp:Content>

