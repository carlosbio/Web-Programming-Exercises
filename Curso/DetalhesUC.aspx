<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetalhesUC.aspx.cs" Inherits="DetalhesUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphConst" Runat="Server">
    <h2><asp:Label ID="labelUC" runat="server" Text="Unidade Curricular"></asp:Label></h2>
    <asp:Label ID="labelDocente" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="LabelECTS" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:Label ID="labelNome" runat="server" Text="Nome: "></asp:Label>
    <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
    <asp:Button ID="btnInscricao" runat="server" Text="Inscrever-se" 
        OnClick="btnInscricao_Click" />
    <asp:Label ID="labelAviso" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>