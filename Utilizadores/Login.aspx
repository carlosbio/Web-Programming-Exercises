<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csUtilizadores %>" 
            SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        Password: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
        <br />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

    </div>
    </form>
</body>
</html>
