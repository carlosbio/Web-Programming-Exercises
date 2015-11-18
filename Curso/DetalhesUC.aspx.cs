using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetalhesUC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["valor"]=="tw")
        {
            labelUC.Text = "Tecnologias Web";
            labelDocente.Text = "Docente Responsável: Simão Paredes";
            LabelECTS.Text = "ECTS: 4";
        }
        else if (Request.QueryString["valor"] == "pw")
        {
            labelUC.Text = "Programação Web";
            labelDocente.Text = "Docente Responsável: Francisco B. Leite";
            LabelECTS.Text = "ECTS: 6";
        }
        else
        {
            Response.Redirect("UnidadesCurriculares.aspx");
        }   
    }

    public string Mensagem
    {
        get
        {
            return tbNome.Text;
        }
    }

    protected void btnInscricao_Click(object sender, EventArgs e)
    {
        if (tbNome.Text != "")
            Server.Transfer("Inscrito.aspx");
        else
            labelAviso.Text = " (indicar o nome)";
    }
}