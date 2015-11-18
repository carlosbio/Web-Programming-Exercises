using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DadosCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void validaDados(object sender, EventArgs e)
    {
        SqlConnection SqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["csClientes"].ConnectionString);

        string SqlStr = "SELECT * from Dados where Id = '"+txtCliente.Text+"'";

        SqlCommand Cmd = new SqlCommand(SqlStr, SqlCnn);

        SqlCnn.Open();

        string numCli = Convert.ToString(Cmd.ExecuteScalar());

        numCli = string.Format("{0}", numCli);

        SqlCnn.Close();

        if (txtCliente.Text==numCli)
            Server.Transfer("IdCliente.aspx");
        else
            lblExisteCli.Text = "Cliente não existe";
    }

    public string numCliente
    {
        get
        {
            return txtCliente.Text;
        }
    }
}