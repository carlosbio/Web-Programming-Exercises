<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistarViagem.aspx.cs" Inherits="RegistarViagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Actividades - Outubro de 2015</h2>
        <br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblData" runat="server" Text="Data de Nascimento"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtData" runat="server" placeholder="dd/mm/aaaa"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rValidatorData" runat="server" ControlToValidate="txtData" 
                    Text="*" ErrorMessage="A data é de prenchimento obrigatório" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="compValData" runat="server" Text="*" controltovalidate= "txtData" 
                        Type="Date" Operator="DataTypeCheck" ErrorMessage="Data inválida"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblNIF" runat="server" Text="Número Fiscal"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNIF" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rValidatorNIF" runat="server" ControlToValidate="txtNIF" 
                    Text="**" ErrorMessage="O NIF é de prenchimento obrigatório" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="compValInteiro" runat="server" Text= "**"
                    ControlToValidate="txtNIF" Type="Integer" Operator="DataTypeCheck"
                    ErrorMessage="Introduza um valor inteiro" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnContinuar" runat="server" Text="Continuar" OnClick="btnClick" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:ValidationSummary ID="valErros" runat="server" ShowMessageBox="true" DisplayMode="BulletList" ShowSummary="true"/>

        <br />
        <br />
        <asp:Label ID="lblValidaIdade" runat="server" Text="" ForeColor="Red"></asp:Label>

    </div>
    </form>
</body>
</html>
