using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void unidade1List_SelectedIndexChanged(object sender, EventArgs e)
    {
        cotacaoTb.Text = "";
        totalTb.Text = "";

        if (unidade1List.SelectedIndex == 0 || unidade2List.SelectedIndex == 0) // Sem selecção
            cotacaoTb.Text = "";
        else if (unidade1List.SelectedIndex == unidade2List.SelectedIndex)      // Igual selecção
            cotacaoTb.Text = "1,00000";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 2)    // EUR vs USD
            cotacaoTb.Text = "1,10190";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 3)    // EUR vs GBP
            cotacaoTb.Text = "0,71951";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 4)    // EUR vs JPY
            cotacaoTb.Text = "133,792";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 5)    // EUR vs CHF
            cotacaoTb.Text = "1,07852";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 1)    // USD vs EUR
            cotacaoTb.Text = "0,90752";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 3)    // USD vs GBP
            cotacaoTb.Text = "0,65298";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 4)    // USD vs JPY
            cotacaoTb.Text = "121,420";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 5)    // USD vs CHF
            cotacaoTb.Text = "0,97878";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 1)    // GBP vs EUR
            cotacaoTb.Text = "1,38983";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 2)    // GBP vs USD
            cotacaoTb.Text = "1,53145";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 4)    // GBP vs JPY
            cotacaoTb.Text = "185,949";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 5)    // GBP vs CHF
            cotacaoTb.Text = "1,49895";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 1)    // JPY vs EUR
            cotacaoTb.Text = "0,00747";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 2)    // JPY vs USD
            cotacaoTb.Text = "0,00824";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 3)    // JPY vs GBP
            cotacaoTb.Text = "0,00538";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 5)    // JPY vs CHF
            cotacaoTb.Text = "0,00806";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 1)    // CHF vs EUR
            cotacaoTb.Text = "0,92720";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 2)    // CHF vs USD
            cotacaoTb.Text = "1,02168";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 3)    // CHF vs GBP
            cotacaoTb.Text = "0,66713";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 5)    // CHF vs JPY
            cotacaoTb.Text = "124,052";

        double valor,cotacao;

        if (!double.TryParse(inputTb.Text, out valor))
            totalTb.Text = "Valor inválido";
        else
        {
            double.TryParse(cotacaoTb.Text, out cotacao);

            valor = valor * cotacao;

            totalTb.Text = valor.ToString();

            totalLabel.Text = unidade2List.Text;
        }
    }

    protected void unidade2List_SelectedIndexChanged(object sender, EventArgs e)
    {
        cotacaoTb.Text = "";
        totalTb.Text = "";

        if (unidade1List.SelectedIndex == 0 || unidade2List.SelectedIndex == 0) // Sem selecção
            cotacaoTb.Text = "";
        else if (unidade1List.SelectedIndex == unidade2List.SelectedIndex)      // Igual selecção
            cotacaoTb.Text = "1,00000";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 2)    // EUR vs USD
            cotacaoTb.Text = "1,10190";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 3)    // EUR vs GBP
            cotacaoTb.Text = "0,71951";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 4)    // EUR vs JPY
            cotacaoTb.Text = "133,792";
        else if (unidade1List.SelectedIndex == 1 && unidade2List.SelectedIndex == 5)    // EUR vs CHF
            cotacaoTb.Text = "1,07852";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 1)    // USD vs EUR
            cotacaoTb.Text = "0,90752";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 3)    // USD vs GBP
            cotacaoTb.Text = "0,65298";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 4)    // USD vs JPY
            cotacaoTb.Text = "121,420";
        else if (unidade1List.SelectedIndex == 2 && unidade2List.SelectedIndex == 5)    // USD vs CHF
            cotacaoTb.Text = "0,97878";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 1)    // GBP vs EUR
            cotacaoTb.Text = "1,38983";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 2)    // GBP vs USD
            cotacaoTb.Text = "1,53145";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 4)    // GBP vs JPY
            cotacaoTb.Text = "185,949";
        else if (unidade1List.SelectedIndex == 3 && unidade2List.SelectedIndex == 5)    // GBP vs CHF
            cotacaoTb.Text = "1,49895";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 1)    // JPY vs EUR
            cotacaoTb.Text = "0,00747";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 2)    // JPY vs USD
            cotacaoTb.Text = "0,00824";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 3)    // JPY vs GBP
            cotacaoTb.Text = "0,00538";
        else if (unidade1List.SelectedIndex == 4 && unidade2List.SelectedIndex == 5)    // JPY vs CHF
            cotacaoTb.Text = "0,00806";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 1)    // CHF vs EUR
            cotacaoTb.Text = "0,92720";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 2)    // CHF vs USD
            cotacaoTb.Text = "1,02168";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 3)    // CHF vs GBP
            cotacaoTb.Text = "0,66713";
        else if (unidade1List.SelectedIndex == 5 && unidade2List.SelectedIndex == 5)    // CHF vs JPY
            cotacaoTb.Text = "124,052";

        double valor, cotacao;

        if (!double.TryParse(inputTb.Text, out valor))
            totalTb.Text = "Valor inválido";
        else
        {
            double.TryParse(cotacaoTb.Text, out cotacao);

            valor = valor * cotacao;

            totalTb.Text = valor.ToString();

            totalLabel.Text = unidade2List.Text;
        }
    }
}