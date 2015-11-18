<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IdCliente.aspx.cs" Inherits="IdCliente" %>
<%@ PreviousPageType VirtualPath="~/DadosCliente.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Cliente: <asp:Label ID="lblNumCliente" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Nomes<br />
                    <asp:TextBox ID="tbNomes" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
                <asp:TableCell>
                    &nbsp &nbsp &nbsp Rua<br />
                    &nbsp &nbsp &nbsp <asp:TextBox ID="tbRua" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Apelidos<br />
                    <asp:TextBox ID="tbApelidos" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
                <asp:TableCell>
                    &nbsp &nbsp &nbsp Número<br />
                    &nbsp &nbsp &nbsp <asp:TextBox ID="tbNumero" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Contacto<br />
                    <asp:TextBox ID="tbContacto" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
                <asp:TableCell>
                    &nbsp &nbsp &nbsp Localidade<br />
                    &nbsp &nbsp &nbsp <asp:TextBox ID="tbLocalidade" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    &nbsp &nbsp &nbsp Municipio<br />
                    &nbsp &nbsp &nbsp <asp:TextBox ID="tbMunicipio" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    &nbsp &nbsp &nbsp Distrito<br />
                    &nbsp &nbsp &nbsp <asp:TextBox ID="tbDistrito" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>    
    </div>
    </form>
</body>
</html>
