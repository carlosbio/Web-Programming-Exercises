<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarcarReserva.aspx.cs" Inherits="MarcarReserva" %>
<%@ PreviousPageType VirtualPath="~/RegistarViagem.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Reservas para Outubro de 2015</h2>
        <h4>Cada associado só pode reservar até 3 bilhetes</h4>        
        <asp:Label ID="lblNumAssociado" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblData" runat="server" Text="Data da Viagem"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtData" runat="server" placeholder="dd/mm/aaaa"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rValidatorData" runat="server" ControlToValidate="txtData" 
                    Text="*" ErrorMessage="A data é de prenchimento obrigatório" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="compValData" runat="server" Text="*" controltovalidate= "txtData" 
                        Type="Date" Operator="DataTypeCheck" ErrorMessage="Data inválida"/>

                    <asp:CustomValidator ID="dataValidator" runat="server" Text="*"
                    ErrorMessage="A data para as reservas tem que ser de Outubro de 2015" ControlToValidate="txtData"
                    ValidateEmptyText="true" onservervalidate= "verificarData" />

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblRserva" runat="server" Text="Número de Reservas"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtReserva" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rValidatorReserva" runat="server" ControlToValidate="txtReserva" 
                    Text="**" ErrorMessage="O valor da reserva é de prenchimento obrigatório" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="compValInteiro" runat="server" Text= "**"
                    ControlToValidate="txtReserva" Type="Integer" Operator="DataTypeCheck"
                    ErrorMessage="Introduza um valor inteiro" />
                    <asp:RangeValidator ID="rangeValLimReservas" runat="server" Text="**" ErrorMessage="Só pode reservar 1, 2 ou 3 bilhetes" 
                    ControlToValidate="txtReserva" MinimumValue="1" MaximumValue="3" Type="Integer" />
                   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnContinuar" runat="server" Text="Reservar" OnClick="btnClick" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:ValidationSummary ID="valErros" runat="server" ShowMessageBox="true" DisplayMode="BulletList" ShowSummary="true"/>

        <br />
        <br />
        <asp:Label ID="lblValida" runat="server" Text="" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
