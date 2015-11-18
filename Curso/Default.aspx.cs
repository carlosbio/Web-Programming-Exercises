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

    protected string getCurso() // Método que vai buscar o texto da label na Master Page
    {
        MasterPage MyMasterPage = (MasterPage)Page.Master;  // Cast do objecto

        return MyMasterPage.PageName;   // Devolve o nome devolvido pelo método da Master Page
    }
}
