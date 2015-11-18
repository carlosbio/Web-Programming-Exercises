using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistarViagem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string Mensagem
    {
        get
        {
            return txtNIF.Text;
        }
    }

    protected void btnClick(object sender, EventArgs e)
    {
        DateTime dataActual = DateTime.Now;
        DateTime dataInput = DateTime.ParseExact(txtData.Text, "d/M/yyyy",null);

        int idade = dataActual.Year - dataInput.Year;

        if (dataInput > dataActual.AddYears(-idade))
            idade--;

        if (idade < 65)
            lblValidaIdade.Text = "Reservas disponíveis apenas para pessoas a partir dos 65 anos de idade";
        else
            Server.Transfer("MarcarReserva.aspx");        
    } 
}