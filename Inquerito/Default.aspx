<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Inquérito aos alunos</h2> 
        <b>Dados da Unidade Curricular:</b>
        <br />   
        Curso: <asp:DropDownList ID="listCurso" runat="server" AutoPostBack="True" OnSelectedIndexChanged="listCurso_SelectedIndexChanged">
            <asp:ListItem>Escolha um curso</asp:ListItem>
            <asp:ListItem>Engenharia Informática</asp:ListItem>
            <asp:ListItem>Engenharia Electrotécnica</asp:ListItem>
            <asp:ListItem>Engenharia e Gestão Industrial</asp:ListItem>
        </asp:DropDownList>
        <asp:CustomValidator ID="validatorCurso" runat="server" Text="**"
            ErrorMessage="Escolher um curso" ControlToValidate="listUC"
            ValidateEmptyText="true" onservervalidate= "verificarCurso">
        </asp:CustomValidator>
        <br />
        Unidade Curricular: <asp:DropDownList ID="listUC" runat="server" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="listUC_SelectedIndexChanged">
            <asp:ListItem>Escolha uma Unidade Curricular</asp:ListItem>
        </asp:DropDownList>
        <asp:CustomValidator ID="validatorUC" runat="server" Text="**"
            ErrorMessage="Escolher uma unidade curricular" ControlToValidate="listUC"
            ValidateEmptyText="true" onservervalidate= "verificarUC">
        </asp:CustomValidator>
        <br />
        <br />
        <b>Dados Pessoais:</b>
        <br />
        <asp:Table ID="tableDados" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Nome: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqValNome"
                        runat="server" ControlToValidate="txtNome" Text="***" 
                        ErrorMessage="O Nome é de Prenchimento Obrigatório" SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Email: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqValEmail"
                        runat="server" ControlToValidate="txtEmail" Text="****" 
                        ErrorMessage="O Email é de Prenchimento Obrigatório" SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        Género: <asp:RadioButton ID="rbGenero1" runat="server" text="M" AutoPostBack="True" Checked="True" OnCheckedChanged="rbGenero_CheckedChanged"/><asp:RadioButton ID="rbGenero2" runat="server" text="F" AutoPostBack="True" OnCheckedChanged="rbGenero_CheckedChanged"/>
        <br />
        <br />
        Linguagens de programação que conhece
        <br />
        <asp:CheckBoxList ID="cbListLinguagens" runat="server">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>JavaScript</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
        </asp:CheckBoxList>
        <asp:TextBox ID="txtLinguagem" runat="server"></asp:TextBox>
        <asp:LinkButton ID="lbtnAdicionar" runat="server" Text="Adicionar" OnClick="lbtnAdicionar_Click"></asp:LinkButton>
        <br />
        <asp:Table ID="tableRespostas" runat="server" Visible="False">
            <asp:TableRow>
                <asp:TableCell>
                    <br />                    
                    <b><asp:Label ID="labelRespostas" runat="server" Text="Respostas:"></asp:Label></b>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <h3><asp:HyperLink ID="linkMoodle" runat="server" Text="" Target="_blank"></asp:HyperLink></h3>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Como avalia globalmente a unidade curricular? 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rbListUC" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Como avalia o docente?
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rbListDocente" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Sugestões:
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtSugestoes" runat="server" TextMode="MultiLine"></asp:TextBox>                   
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <section>
             Li e compreendo os <asp:HyperLink ID="linkTermos" runat="server" Text="termos de utilização" 
                 NavigateUrl="~/Termos.aspx" Target="_blank"></asp:HyperLink>. 
        <asp:CheckBox ID="cb7" runat="server" OnCheckedChanged="cb7_CheckedChanged" AutoPostBack="True" CausesValidation="True" />

        <%--<asp:CustomValidator ID="validatorCb7" runat="server" Text="**"
            ErrorMessage="Tem de aceitar os termos de utilização" ControlToValidate="cb7"
            ValidateEmptyText="true" onservervalidate= "verificarCb7">
        </asp:CustomValidator>--%> 

        </section>
        <br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Enabled="False" OnClick="btnEnviar_Click" />

        <asp:ValidationSummary ID="ValidSum" runat="server"
            ShowMessageBox="true" DisplayMode="BulletList" ShowSummary="true"/>

        <asp:Label ID="lblBarra" runat="server" Text="Label" Visible="false"><hr /></asp:Label>

        <asp:Table ID="tableResultado" runat="server" Visible="false">
            <asp:TableRow>
                <asp:TableCell>
                    Inquérito enviado em <asp:Label ID="labelDataR" runat="server" Text=""></asp:Label> 
                    às <asp:Label ID="labelHorasR" runat="server" Text=""></asp:Label> 
                    pelo senhor <asp:Label ID="labelAlunoR" runat="server" Text=""></asp:Label>
                    <asp:Label ID="labelMailR" runat="server" Text=""></asp:Label>.
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <b>Unidade Curricular: </b>
                    <asp:Label ID="labelUCR" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <b>Linguagens de Programação conhecidas: </b>
                    <asp:Label ID="labelLinguagensR" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <b>Respostas:</b>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Avaliação da UC: <asp:Label ID="labelAvalUCR" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Avaliação do docente: <asp:Label ID="labelAvalDocenteR" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Sugestões:
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="labelSugestoes" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>           
    </div>
    </form>
</body>
</html>
