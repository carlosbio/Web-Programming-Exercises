using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PesquisaProdutos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dSProdutos_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        LabelPadaria.Text = e.AffectedRows.ToString();
    }
}