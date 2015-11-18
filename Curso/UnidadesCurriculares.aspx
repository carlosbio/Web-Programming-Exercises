<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UnidadesCurriculares.aspx.cs" Inherits="UnidadesCurriculares" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphConst" Runat="Server">
    <br />
    <h2>Unidades Curriculares</h2>
    <asp:Table ID="tabelaLinks" runat="server">
        <asp:TableRow>
            <asp:TableCell BackColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1">
                <asp:HyperLink ID="linkTW" runat="server" NavigateUrl="DetalhesUC.aspx?valor=tw">Tecnologias Web</asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BackColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1">
                <asp:HyperLink ID="linkPW" runat="server" NavigateUrl="DetalhesUC.aspx?valor=pw">Programação Web</asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>