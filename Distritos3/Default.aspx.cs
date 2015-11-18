using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Configuration;

using DivAdminDataSystem;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)    // Carregamento inicial da página
    {
        string CnnString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConStr_DivAdmin"].ConnectionString;  // Cria a connection string

        DivAdminAppCode.LigarBD(CnnString); // Liga à BD através da connection string criada

        DivAdminAppCode.IniciarDropDownList(ddlMunicipios, "Seleccione ...");   // Inicia ddlMunicipios com o primeiro item da lista

        ddlMunicipios.Enabled = false;  // Desactiva a ddlMunicipios
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DivAdminAppCode.IniciarDropDownList(ddlDistritos, "Seleccione ...");    // Inicia ddlDistritos com o primeiro item da lista
            DivAdminAppCode.CarregarDropDownList(ddlDistritos, DivAdminAppCode.Distritos(), "NomeDistrito", "CodigoDistrito");  // Carrega ddlDistritos
        }
    }

    protected void ddlDistritos_SelectedIndexChanged(object sender, EventArgs e)    // Sempre que muda o índice da ddlDistritos
    {
        if (ddlDistritos.SelectedIndex > 0) // Se o índice for superior a 0
        {
            string distrito = ddlDistritos.SelectedValue;   // Guarda a string do distrito seleccionado

            DivAdminAppCode.IniciarDropDownList(ddlMunicipios, "Seleccione ...");   // Força o início da ddlMunicipios (tem o enable)
            DivAdminAppCode.CarregarDropDownList(ddlMunicipios, DivAdminAppCode.Municipios(distrito), "NomeMunicipio", "CodigoMunicipio");  // Carrega a ddlMunicipios
        }
        else
            DivAdminAppCode.EncerrarDropDownList(ddlMunicipios);    // Encerra ddlMunicipios
    }
}