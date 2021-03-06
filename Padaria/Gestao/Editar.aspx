﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Gestao_Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><h3>Gestão da Padaria - Editar os Produtos</h3></p>

    <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSPadaria %>" SelectCommand="SELECT * FROM [Produtos]" OnSelected="dSProdutos_Selected"></asp:SqlDataSource>

    <div><p><asp:Label ID="LabelPadaria" runat="server" Text=""></asp:Label></p></div>

        <asp:GridView ID="GvProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduto" DataSourceID="dSProdutos" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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

        <asp:SqlDataSource ID="dSEditar" runat="server" ConnectionString="<%$ ConnectionStrings:CSPadaria %>" DeleteCommand="DELETE FROM [Produtos] WHERE [IdProduto] = @IdProduto" InsertCommand="INSERT INTO [Produtos] ([IdProduto], [Nome], [Tipo], [Preco], [Descricao], [Imagem]) VALUES (@IdProduto, @Nome, @Tipo, @Preco, @Descricao, @Imagem)" SelectCommand="SELECT * FROM [Produtos] WHERE ([IdProduto] = @IdProduto)" UpdateCommand="UPDATE [Produtos] SET [Nome] = @Nome, [Tipo] = @Tipo, [Preco] = @Preco, [Descricao] = @Descricao, [Imagem] = @Imagem WHERE [IdProduto] = @IdProduto">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="GvProdutos" Name="IdProduto" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
                <asp:Parameter Name="Preco" Type="String" />
                <asp:Parameter Name="Descricao" Type="String" />
                <asp:Parameter Name="Imagem" Type="String" />
                <asp:Parameter Name="IdProduto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView ID="FvEditar" runat="server" DataKeyNames="IdProduto" DataSourceID="dSEditar" OnItemDeleted="FvEditar_ItemDeleted" OnItemInserted="FvEditar_ItemInserted" OnItemUpdated="FvEditar_ItemUpdated">
            <EditItemTemplate>
                IdProduto:
                <asp:Label ID="IdProdutoLabel1" runat="server" Text='<%# Eval("IdProduto") %>' />
                <br />
                Nome:
                <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                Tipo:
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                <br />
                Preco:
                <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
                <br />
                Descricao:
                <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
                <br />
                Imagem:
                <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                IdProduto:
                <asp:TextBox ID="IdProdutoTextBox" runat="server" Text='<%# Bind("IdProduto") %>' />
                <br />
                Nome:
                <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                Tipo:
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                <br />
                Preco:
                <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
                <br />
                Descricao:
                <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
                <br />
                Imagem:
                <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                IdProduto:
                <asp:Label ID="IdProdutoLabel" runat="server" Text='<%# Eval("IdProduto") %>' />
                <br />
                Nome:
                <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                Tipo:
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Bind("Tipo") %>' />
                <br />
                Preco:
                <asp:Label ID="PrecoLabel" runat="server" Text='<%# Bind("Preco") %>' />
                <br />
                Descricao:
                <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Bind("Descricao") %>' />
                <br />
                Imagem:
                <asp:Label ID="ImagemLabel" runat="server" Text='<%# Bind("Imagem") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
</asp:Content>

