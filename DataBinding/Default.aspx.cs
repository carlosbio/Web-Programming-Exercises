using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

using BaseDados;

public partial class _Default : System.Web.UI.Page
{
    //String[] distritos = { "Aveiro", "Castelo Branco", "Coimbra", "Guarda", "Leiria", "Viseu" };

    String[][] municipios= {new string[] { "Aveiro", "Ilhavo", "Mealhada"},
                            new string[] { "Castelo Branco", "Covilhã", "Fundão" },
                            new string[] { "Coimbra","Montemor","Figueira", "Penacova"},
                            new string[] { "Guarda", "Vilar Formoso", "Almeida"},
                            new string[] { "Leiria", "Ourém", "Marinha Grande"},
                            new string[] { "Viseu", "Mangualde", "Nelas", "Satão"}};

    protected void Page_Load(object sender, EventArgs e)
    {
        Cm.DataBind(); //ou this.DataBind();
        return;
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (!this.IsPostBack)
        {
            //efectuar o data binding
            //dDL.DataSource = distritos;
            //dDL.DataBind();

            SqlDB Bd = new SqlDB("ConStr_DivAdmin");
            string str = "SELECT NomeDistrito from Distritos";

            SqlCommand cmd = new SqlCommand(str, Bd.SqlConDB);

            Bd.SqlConDB.Open();
            SqlDataReader dR = cmd.ExecuteReader();

            //efectuar o data binding
            dDL.DataSource = dR;
            dDL.DataTextField = "NomeDistrito";
            dDL.DataBind();
            dR.Close();
            Bd.SqlConDB.Close();
        }

        return;
    }

    protected void MostrarSeleccao(Object obj, EventArgs e)
    {
        saida.Text = "";

        ddlMunicipios.Items.Clear();
        ddlMunicipios.Items.Insert(0, new ListItem("Seleccione...", "0"));

        //if(dDL.SelectedIndex!=0)
        //{            
            //ddlMunicipios.DataSource = municipios[dDL.SelectedIndex-1];
            //ddlMunicipios.DataBind();

            SqlDB Bd = new SqlDB("ConStr_DivAdmin");
            string str = "SELECT NomeMunicipio from Municipios where [CodigoDistrito] = @distrito";

            SqlCommand cmd = new SqlCommand(str, Bd.SqlConDB);
            cmd.Parameters.AddWithValue("@distrito",dDL.SelectedItem.Value);
            cmd.Connection = Bd.SqlConDB;

            Bd.SqlConDB.Open();
            SqlDataReader dR = cmd.ExecuteReader();

            //efectuar o data binding
            ddlMunicipios.DataSource = dR;
            ddlMunicipios.DataTextField = "NomeMunicipio";
            ddlMunicipios.DataValueField = "IdMunicipio";
            ddlMunicipios.DataBind();
            dR.Close();
            Bd.SqlConDB.Close();
        //}
    }

    protected void MostrarSeleccao2(Object obj, EventArgs e)
    {
        if (ddlMunicipios.SelectedIndex >= 0)
            saida.Text = "Municipio: " + ddlMunicipios.SelectedItem.Text;
    }
}