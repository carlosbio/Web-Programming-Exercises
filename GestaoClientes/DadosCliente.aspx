<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DadosCliente.aspx.cs" Inherits="DadosCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csClientes %>" SelectCommand="SELECT * FROM [Dados]"></asp:SqlDataSource>      
        <asp:Table ID="tableCliente" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <b>Número de Cliente</b>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqvalTxtCli"
                        runat="server" ControlToValidate="txtCliente" Text="*" 
                        ErrorMessage="Prenchimento Obrigatório" SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexpvalTxtCli"
                        runat="server" ControlToValidate="txtCliente" Text="*" 
                        ErrorMessage="Formato incorrecto" ValidationExpression="^\d{3}-\d{3}-\d{4}$">
                    </asp:RegularExpressionValidator>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnCliente" runat="server" Text="Editar Dados Cliente" OnClick="validaDados" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <br />
        <asp:Label ID="lblExisteCli" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidSum" runat="server" ShowMessageBox="False" 
            DisplayMode="List" ShowSummary="true" ForeColor="Red">
        </asp:ValidationSummary>
    </div>
    </form>
</body>
</html>
