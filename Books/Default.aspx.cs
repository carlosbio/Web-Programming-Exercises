using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ShowBooks(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(ddlCategory.SelectedValue))
        {
            DataTable dt = new DataTable();

            string CnnString = ConfigurationManager.ConnectionStrings["csBooks"].ConnectionString;

            // SET CONNECTION.
            using (SqlConnection con = new SqlConnection(CnnString))
            {
                string sQuery = "SELECT *FROM dbo.Books " + "WHERE Category = '" + 
                    ddlCategory.SelectedValue + "'";

                using (SqlCommand cmd = new SqlCommand(sQuery))
                {
                    SqlDataAdapter sda = new SqlDataAdapter();
                    cmd.Connection = con;
                    con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);

                    ddlBooks.DataSource = dt;

                    ddlBooks.DataTextField = "BookName";
                    ddlBooks.DataValueField = "BookName";

                    ddlBooks.DataBind();

                    // OPTIONAL. SET THE FIRST VALUE.
                    ddlBooks.Items.Insert(0, new ListItem("--Select a Book--", "0"));
                }
            }
        }
    }
}