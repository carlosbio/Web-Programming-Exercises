using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DivAdminDataSystem;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        string CnnString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConStr_DivAdmin"].ConnectionString;

        DivAdminAppCode.LigarBD(CnnString);

        DivAdminAppCode.IniciarDropDownList(ddlMunicipios, "Seleccione ...");
        ddlMunicipios.Enabled = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DivAdminAppCode.IniciarDropDownList(ddlDistritos, "Seleccione ...");
            DivAdminAppCode.CarregarDropDownList(ddlDistritos, DivAdminAppCode.Distritos(), "NomeDistrito", "CodigoDistrito");
        }
    }

    protected void ddlDistritos_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDistritos.SelectedIndex > 0)
        {
            string distrito = ddlDistritos.SelectedValue;

            DivAdminAppCode.IniciarDropDownList(ddlMunicipios, "Seleccione ...");
            DivAdminAppCode.CarregarDropDownList(ddlMunicipios, DivAdminAppCode.Municipios(distrito), "NomeMunicipio", "CodigoMunicipio");
        }
        else
            DivAdminAppCode.EncerrarDropDownList(ddlMunicipios);
    }
}