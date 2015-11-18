<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p></p>
        <asp:SqlDataSource ID="dsDistritos" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr_DivAdmin %>" SelectCommand="SELECT [NomeDistrito], [CodigoDistrito] FROM [Distritos]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsMunicipios" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr_DivAdmin %>" SelectCommand="SELECT [NomeMunicipio], [CodigoMunicipio] FROM [Municipios] WHERE ([CodigoDistrito] = @CodigoDistrito)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlDistritos" Name="CodigoDistrito" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="ddlDistritos" runat="server" AppendDataBoundItems= "True" 
            onselectedindexchanged="ddlDistritos_SelectedIndexChanged" AutoPostBack= "True" DataSourceID="dsDistritos" DataTextField="NomeDistrito" DataValueField="CodigoDistrito">
        </asp:DropDownList>
        &nbsp
        <asp:DropDownList ID="ddlMunicipios" runat="server" AppendDataBoundItems= "True" DataSourceID="dsMunicipios" DataTextField="NomeMunicipio" DataValueField="CodigoMunicipio">
        </asp:DropDownList>
        <p></p>
        <asp:Label ID="saida" runat="server"></asp:Label>    
    </div>
    </form>
</body>
</html>
