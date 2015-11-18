using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace DivAdminDataSystem    // Definição do namespace
{
    public class DivAdminAppCode    // Classe DivAdminAppCode
    {
        public static SqlConnection SqlCnn  // Variável que estabelece ligação com a BD
        {
            get;
            private set;
        }

        public static bool LigarBD(string CnnString)    // Método que recebe a connection string e liga à BD
        {
            DivAdminAppCode.SqlCnn = new SqlConnection(CnnString);  // Cria um novo objecto SqlConnection com a connection string

            return DivAdminAppCode.SqlCnn != null;  // Devolve true se criou objecto com sucesso
        }

        public static void IniciarDropDownList(DropDownList ddl, string ItemInicial = null) // Método que inicia ddl
        {
            ddl.Items.Clear();  // Limpa a ddl

            if (!ddl.Enabled)   // Se estiver desactivada, activa-a
                ddl.Enabled = true;            

            if (ItemInicial != null)    // Se receber item inicial diferente de null
            {
                ddl.Items.Add(ItemInicial); // Adiciona item com a string que recebeu
                ddl.Items[0].Value = "0";   // Atribui 0 ao item à cabeça da lista
            }
        }

        public static void EncerrarDropDownList(DropDownList ddl, string ValorInicial = "0")    // Método que encerra ddl
        {
            ddl.Items[0].Value = ValorInicial;  // Atribui o valor do argumento à cabeça da lista
            ddl.SelectedValue = ValorInicial;   // Define como valor seleccionado o valor do argumento
            ddl.Enabled = false;                // Desactiva a ddl
        }

        public static void CarregarDropDownList(DropDownList ddl, object datasource, string textfield = null, string valuefield = null) // Método que carrega a ddl
        {
            ddl.DataSource = datasource;    // Atribui a datasource recebida à ddl

            if (textfield != null)  // Caso o textfield recebido seja diferente de null
                ddl.DataTextField = textfield;  // Atribui textfield à ddl
            

            if (valuefield != null) // Caso o valuefield recebido seja diferente de null
                ddl.DataValueField = valuefield;    // Atribui valuefield à ddl            

            ddl.DataBind(); // Faz bind à ddl
        }

        public static DataTable Distritos(string status = "empty")  // Método DataTable Distritos
        {
            DataTable result;   // Cria uma referência para um objecto DataTable

            using (DivAdminAppCode.SqlCnn)  // Cláusula using assegura que o scope é descartado
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();   // Cria um SqlDataAdapter

                string text = "SELECT [NomeDistrito], [CodigoDistrito] FROM [Distritos]";   // Define query string
               
                if (status != "empty")  // Se o status recebido for diferente de null
                    text += " WHERE [Status] = @status";    // Define e concatena a cláusula WHERE na query string                
               
                SqlCommand sqlCommand = new SqlCommand(text, DivAdminAppCode.SqlCnn);   // Cria um objecto SqlCommand com a query string e a connection string
                sqlCommand.Parameters.AddWithValue("@status", status);  // Adiciona ao comando o parâmetro recebido
                sqlDataAdapter.SelectCommand = sqlCommand;  // Define o SqlDataAdapter com o comando criado

                DataTable dataTable = new DataTable();  // Cria um objecto DataTable
                sqlDataAdapter.Fill(dataTable); // Preenche a DataTable através do SqlDataAdapter
                result = dataTable; // Coloca a DataTable criada numa nova referência
            }
            
            return result;  // Devolve a DataTable já fora do scope do using que entretanto descartou tudo
        }

        public static DataTable Municipios(string cod_distrito = "empty")   // Método DataTable Municipios
        {
            DataTable result;   // Cria uma referência para um objecto DataTable
           
            using (DivAdminAppCode.SqlCnn)  // Dentro do scope do using, usando a connection string
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();   // Novo objecto SqlDataAdapter

                string text = "SELECT [NomeMunicipio], [CodigoMunicipio] FROM [Municipios]";    // Query string
               
                if (cod_distrito != "empty")    // Caso o parâmetro esteja vazio
                    text += " WHERE [CodigoDistrito] = @distrito";  // Concatena na query string a cláusula WHERE          
               
                SqlCommand sqlCommand = new SqlCommand(text, DivAdminAppCode.SqlCnn);   // Novo SqlCommand
                sqlCommand.Parameters.AddWithValue("@distrito", cod_distrito);  // Adiciona parâmetro
                sqlDataAdapter.SelectCommand = sqlCommand;  // Define o SqlDataAdapter atravé do SqlCommand

                DataTable dataTable = new DataTable();  // Nova DataTable
                sqlDataAdapter.Fill(dataTable); // Preenche a DataTable
                result = dataTable; // Coloca a DataTable numa nova referência
            }
            
            return result;  // Devolve a DataTable, já fora do scope da cláusula using
        }
    }
}