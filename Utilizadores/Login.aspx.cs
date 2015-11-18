using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        try
        {
            Utilizador u = new Utilizador(txtEmail.Text);

            if (u.ValidarPassword(txtPassword.Text))
                Response.Redirect("OutraPagina.aspx");
            else
                lblMsg.Text = "Password errada.";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}