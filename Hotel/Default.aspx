<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <h2>Hotel - Reserva de Quartos</h2>
        </div>
        <div>
            Número de pessoas <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <section>
            <h4>Pretende quartos</h4>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" />
        </section>
        <section>
            <h4>Conforto</h4>
            <asp:CheckBox ID="CheckBox3" runat="server" />
            <br />
            <asp:CheckBox ID="CheckBox4" runat="server" />
        </section>
        <section>
            <h4>Refeições - Buffet</h4>
            <asp:CheckBox ID="CheckBox5" runat="server" />
            <br />
            <asp:CheckBox ID="CheckBox6" runat="server" OnCheckedChanged="CheckBox6_CheckedChanged" />
            <br />
            <asp:CheckBox ID="CheckBox7" runat="server" />
        </section>
        <section>
            <h4>Serviços Associados</h4>
            <asp:CheckBox ID="CheckBox8" runat="server" />
            <br />
            <asp:CheckBox ID="CheckBox9" runat="server" />
        </section>    
    </div>
    </form>
</body>
</html>
