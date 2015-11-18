using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MarcarReserva : System.Web.UI.Page
{
    private bool flagData=false;
    private bool flagReserva=false;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lblNumAssociado.Text = PreviousPage.Mensagem;
    }

    protected void btnClick(object sender, EventArgs e)
    {
        int reservas;

        int.TryParse(txtReserva.Text, out reservas);

        if (reservas > 0 && reservas < 4)
            flagReserva = true;

        if (flagData == true && flagReserva == true)
            Server.Transfer("Resumo.aspx");
        else
            lblValida.Text = "Verificar dados da reserva";
           
    }

    protected void verificarData(object sender, ServerValidateEventArgs args)
    {
        args.IsValid = false;

        DateTime dataInput = DateTime.ParseExact(txtData.Text, "d/M/yyyy", null);

        int mes = dataInput.Month;
        int ano = dataInput.Year;

        if (mes == 10 && ano == 2015)
        {
            args.IsValid = true;
            flagData = true;
            return;
        }

        return;
    }

    public string Associado
    {
        get
        {
            return lblNumAssociado.Text;
        }
    }

    public string Data
    {
        get
        {
            return txtData.Text;
        }
    }

    public string Reserva
    {
        get
        {
            return txtReserva.Text;
        }
    }
}