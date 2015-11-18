using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gestao_Editar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FvEditar_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GvProdutos.DataBind();
    }
    protected void FvEditar_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GvProdutos.DataBind();
    }
    protected void FvEditar_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GvProdutos.DataBind();
    }

    protected void dSProdutos_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        LabelPadaria.Text = "Número de registos: " + e.AffectedRows.ToString();
    }
}