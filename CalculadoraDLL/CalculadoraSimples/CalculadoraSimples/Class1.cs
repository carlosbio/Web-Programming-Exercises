using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraSimples
{
    public class MaquinaCalcularSimples
    {
        public MaquinaCalcularSimples()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string Calcular(string OperandoEsq, String Operacao, string OperandoDir, int NumDigDec = 2)
        {
            double resultado = 0, ope, opd;

            double.TryParse(OperandoEsq, out ope);
            double.TryParse(OperandoDir, out opd);

            switch (Operacao)
            {
                case "+":
                    resultado = ope + opd;
                    break;
                case "-":
                    resultado = ope - opd;
                    break;
                case "*":
                    resultado = ope * opd;
                    break;
                case "/":
                    resultado = ope / opd;
                    break;
            }

            return resultado.ToString();

            //if (decimais.SelectedIndex == 0)
            //{
            //    total.Text = resultado.ToString("0");
            //    etiqueta.Text = "[0]";
            //    numdecimais.Visible = false;
            //    usardecimais.Visible = false;
            //}

            //else if (decimais.SelectedIndex == 1)
            //{
            //    total.Text = resultado.ToString("0.0");
            //    etiqueta.Text = "[1]";
            //    numdecimais.Visible = false;
            //    usardecimais.Visible = false;
            //}
            //else if (decimais.SelectedIndex == 2)
            //{
            //    total.Text = resultado.ToString("0.00");
            //    etiqueta.Text = "[2]";
            //    numdecimais.Visible = false;
            //    usardecimais.Visible = false;
            //}
            //else if (decimais.SelectedIndex == 3)
            //{
            //    total.Text = resultado.ToString("0.000");
            //    etiqueta.Text = "[3]";
            //    numdecimais.Visible = false;
            //    usardecimais.Visible = false;
            //}
            //else if (decimais.SelectedIndex == 4)
            //{
            //    total.Text = resultado.ToString("0.0000");
            //    etiqueta.Text = "[4]";
            //    numdecimais.Visible = false;
            //    usardecimais.Visible = false;
            //}
            //else
            //{
            //    numdecimais.Visible = true;
            //    usardecimais.Visible = true;
            //}

            //if (numdecimais.Visible == true)
            //{
            //    int valor;
            //    string dec = "0";

            //    if (!int.TryParse(numdecimais.Text, out valor) && valor < 5)    // Converte a string para int
            //        total.Text = "Valor Inválido";
            //    else
            //    {
            //        for (int i = 0; i < valor; i++)
            //        {
            //            if (i == 0)
            //                dec += ".0";
            //            else
            //                dec += "0";
            //        }

            //        total.Text = resultado.ToString(dec);
            //        etiqueta.Text = "[" + valor + "]";
            //    }
            //}
        }
    }    
}