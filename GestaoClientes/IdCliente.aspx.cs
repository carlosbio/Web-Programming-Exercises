using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class IdCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lblNumCliente.Text = PreviousPage.numCliente;

        SqlConnection SqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["csClientes"].ConnectionString);

        string SqlStr = "SELECT * from Dados where Id = '" + lblNumCliente.Text + "'";

        SqlCommand Cmd = new SqlCommand(SqlStr, SqlCnn);

        SqlCnn.Open();

        SqlDataReader Dados = Cmd.ExecuteReader();

        string dados = "";

        while (Dados.Read())
            dados += string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}", Dados.GetString(0), Dados.GetString(1), Dados.GetString(2),
                Dados.GetString(3), Dados.GetString(4), Dados.GetString(5), Dados.GetString(6), Dados.GetString(7), Dados.GetString(8));

        string[] campos = dados.Split('|');

        foreach (string s in campos)       
            System.Console.WriteLine(s);

        tbNomes.Text = campos[1];
        tbApelidos.Text = campos[2];
        tbContacto.Text = campos[3];
        tbRua.Text = campos[4];
        tbNumero.Text = campos[5];
        tbLocalidade.Text = campos[6];
        tbMunicipio.Text = campos[7];
        tbDistrito.Text = campos[8];

        SqlCnn.Close();
    }
}