<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resumo.aspx.cs" Inherits="Resumo" %>
<%@ PreviousPageType VirtualPath="~/MarcarReserva.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Actividades - Outubro de 2015</h2>
        <h3>Reservas Efectuadas</h3>
        <br />
        Associado: <asp:Label ID="lblAssociado" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Data da Viagem: <asp:Label ID="lblData" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Número de Reservas: <asp:Label ID="lblReserva" runat="server" Text=""></asp:Label>  
    </div>
    </form>
</body>
</html>
