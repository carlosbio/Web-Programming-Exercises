<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OutraPagina.aspx.cs" Inherits="OutraPagina" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        gridUtilizadores.DataSource = Utilizador.ObterTodos();
        gridUtilizadores.DataBind();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gridUtilizadores" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
