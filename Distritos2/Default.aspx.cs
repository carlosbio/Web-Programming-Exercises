﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)    // Carregamento inicial da página
    {
        ddlMunicipios.Items.Clear();  // Limpa a ddlMunicipios
        
        ddlMunicipios.Enabled = false;  // Desactiva a ddlMunicipios

        ddlMunicipios.Items.Add("Seleccione ..."); // Adiciona item

        ddlMunicipios.Items[0].Value = "0";   // Atribui 0 ao item à cabeça da lista
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlDistritos.Items.Clear();  // Limpa a ddlDistritos

            ddlDistritos.Enabled = true;  // Activa a ddlDistritos

            ddlDistritos.Items.Add("Seleccione ..."); // Adiciona item

            ddlDistritos.Items[0].Value = "0";   // Atribui 0 ao item à cabeça da lista
        }
    }

    protected void ddlDistritos_SelectedIndexChanged(object sender, EventArgs e)    // Sempre que muda o índice da ddlDistritos
    {
        if (ddlDistritos.SelectedIndex > 0) // Se o índice for superior a 0
        {
            ddlMunicipios.Items.Clear();  // Limpa a ddlMunicipios

            ddlMunicipios.Enabled = true;  // Activa a ddlMunicipios

            ddlMunicipios.Items.Add("Seleccione ..."); // Adiciona item

            ddlMunicipios.Items[0].Value = "0";   // Atribui 0 ao item à cabeça da lista        
        }
        else
        {
            ddlMunicipios.Items[0].Value = "0";  // Atribui o valor 0 à cabeça da lista
            ddlMunicipios.SelectedValue = "0";   // Define 0 como valor seleccionado
            ddlMunicipios.Enabled = false;       // Desactiva a ddl
        }    
    }
}