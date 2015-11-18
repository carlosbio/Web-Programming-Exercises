using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private bool flagCurso = false;
    private bool flagUC = false;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void listCurso_SelectedIndexChanged(object sender, EventArgs e)
    {
        listUC.Items.Clear();

        if (tableRespostas.Visible == true)
            tableRespostas.Visible = false;

        if(listCurso.SelectedIndex == 0)
        {
            listUC.Enabled = false;
            flagCurso = false;
            flagUC = false;
            listUC.Items.Add("Escolha uma Unidade Curricular");
        }
        else if (listCurso.SelectedIndex == 1)
        {
            listUC.Enabled = true;
            listUC.Items.Add("Escolha uma Unidade Curricular");
            listUC.Items.Add("Introdução à Programação");
            listUC.Items.Add("Tecnologias Web");
            listUC.Items.Add("Programação Web");
        }
        else if (listCurso.SelectedIndex == 2)
        {
            listUC.Enabled = true;
            listUC.Items.Add("Escolha uma Unidade Curricular");
            listUC.Items.Add("Medidas e Instrumentação");
            listUC.Items.Add("Electromagnetismo");
            listUC.Items.Add("Automação Industrial e Robótica");
        }
        else if (listCurso.SelectedIndex == 3)
        {
            listUC.Enabled = true;
            listUC.Items.Add("Escolha uma Unidade Curricular");
            listUC.Items.Add("Introdução à Gestão");
            listUC.Items.Add("Introdução aos Processos");
            listUC.Items.Add("Gestão Financeira");
        } 
    }
    protected void rbGenero_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton rb = (RadioButton)sender;

        if (sender.Equals(rbGenero1))
        {
            rbGenero1.Checked = true;
            rbGenero2.Checked = false;
        }
        else
        {
            rbGenero2.Checked = true;
            rbGenero1.Checked = false;
        }
    }

    protected void cb7_CheckedChanged(object sender, EventArgs e)
    {
        if (cb7.Checked == true && flagCurso == true && flagUC == true)
            btnEnviar.Enabled = true;
        else
        {
            btnEnviar.Enabled = false;
            cb7.Checked = false;
        }            
    }
    protected void listUC_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(listUC.SelectedIndex == 0)
        {
            tableRespostas.Visible = false;
            flagUC = false;
        }
        else
        {
            linkMoodle.Text = listUC.Text;
            tableRespostas.Visible = true;

            if(listCurso.SelectedIndex == 1 && listUC.SelectedIndex == 1)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3193";
            else if (listCurso.SelectedIndex == 1 && listUC.SelectedIndex == 2)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3189";
            else if (listCurso.SelectedIndex == 1 && listUC.SelectedIndex == 3)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/course/view.php?id=3206";
            else if (listCurso.SelectedIndex == 2 && listUC.SelectedIndex == 1)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3105";
            else if (listCurso.SelectedIndex == 2 && listUC.SelectedIndex == 2)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3113";
            else if (listCurso.SelectedIndex == 2 && listUC.SelectedIndex == 3)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3122";
            else if (listCurso.SelectedIndex == 3 && listUC.SelectedIndex == 1)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3157";
            else if (listCurso.SelectedIndex == 3 && listUC.SelectedIndex == 2)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=3164";
            else if (listCurso.SelectedIndex == 3 && listUC.SelectedIndex == 3)
                linkMoodle.NavigateUrl = "http://moodle.isec.pt/moodle/enrol/index.php?id=1387";
        }
    }
    protected void lbtnAdicionar_Click(object sender, EventArgs e)
    {
        if(txtLinguagem.Text!="")
        {
            cbListLinguagens.Items.Add(txtLinguagem.Text);
            cbListLinguagens.Items[cbListLinguagens.Items.Count-1].Selected = true;
        }
            
        txtLinguagem.Text = "";
    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        lblBarra.Visible = true;
        tableResultado.Visible = true;

        labelDataR.Text = DateTime.Now.ToShortDateString();
        labelHorasR.Text = DateTime.Now.ToShortTimeString();
        labelAlunoR.Text = txtNome.Text;
        labelMailR.Text = " ("+txtEmail.Text+")";
        labelUCR.Text = listUC.Text+" ("+listCurso.Text+")";

        int ctr = cbListLinguagens.Items.Count;

        for(int i=0;i<cbListLinguagens.Items.Count;i++)        
            if (cbListLinguagens.Items[i].Selected == true)
                labelLinguagensR.Text += "["+cbListLinguagens.Items[i].Text+"] ";

        if (rbListUC.SelectedItem != null)
            labelAvalUCR.Text = rbListUC.SelectedItem.Text;
        else
            labelAvalUCR.Text = "Não avaliou";

        if (rbListDocente.SelectedItem != null)
            labelAvalDocenteR.Text = rbListDocente.SelectedItem.Text;
        else
            labelAvalDocenteR.Text = "Não avaliou";

        if (txtSugestoes.Text!="")
            labelSugestoes.Text = txtSugestoes.Text;
        else
            labelSugestoes.Text = "Nenhuma";
    }

    protected void verificarCurso(object sender, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        flagCurso = false;

        args.IsValid = false;

        if (listCurso.SelectedIndex > 0)
        {
            args.IsValid = true;
            flagCurso = true;
            return;
        }

        return;
    }

    protected void verificarUC(object sender, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        flagUC = false;

        if (listUC.SelectedIndex>0)
        {
            args.IsValid = true;
            flagUC = true;
            return;
        }

        return;
    }
}