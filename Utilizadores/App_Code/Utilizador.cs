using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class Utilizador
{
    private string _email;
    private string _password;
    private SqlConnection SqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["csUtilizadores"].ConnectionString);

    public Utilizador(string email, string password)    // Cria um novo utilizador e grava na base de dados se não houver outro com o mesmo email)
    {
        if (!LerDaBD(email))
        {
            this._email = email;
            this._password = password;
            ActualizarBD(true);
        }
        else
            throw new Exception("Já existe um utilizador com esse email.");
    }

    public Utilizador(string email) // Constrói um utilizador, lendo os dados da base de dados, dado o seu email
    {
        if (!LerDaBD(email))
            throw new Exception("Utilizador inexistente.");
        else 
            this._email = email;

    }

    private void ActualizarBD(bool criar)   // Actualiza a base de dados com a informação do utilizador
    {
        string SqlStr;

        if(criar == true)   // True - Inserir nova linha na tabela
            SqlStr = "INSERT into Users(Email,Password) values('"+_email+"', '"+_password+"'"; 
        else    // False - Actualizar uma linha já existente na tabela
            SqlStr = "UPDATE Users set Password = '" + _password 
                + "' where Email = '"+_email+"'";

        SqlCommand Cmd = new SqlCommand(SqlStr, SqlCnn);

        Cmd.Connection = SqlCnn;

        SqlCnn.Open();

        int n = Cmd.ExecuteNonQuery();

        SqlCnn.Close(); 
    }

    private bool LerDaBD(string email)  // Preenche a informação do utilizador, lendo-a da base de dados
    {
        string SqlStr = "SELECT count(1) from Users where Email = '"+email+"'";

        SqlCommand Cmd = new SqlCommand(SqlStr, SqlCnn);

        SqlCnn.Open();

        bool n = Convert.ToBoolean(Cmd.ExecuteScalar());
        
        SqlCnn.Close();

        return n;   // Devolve true se existir o utilizador com o email dado, false caso contrário
    }

    private string ObterConnectionString()  // Devolve a Connection String guardada no ficheiro Web.config com o nome “BD”
    {
        return ConfigurationManager.ConnectionStrings["csUtilizadores"].ConnectionString;
    }

    public bool ValidarPassword(string pass)
    {
        string SqlStr = "SELECT Password from Users where Email = '"+_email+"'";

        SqlCommand Cmd = new SqlCommand(SqlStr, SqlCnn);

        SqlCnn.Open();

        string n = Convert.ToString(Cmd.ExecuteScalar());

        n = string.Format("{0}", n);

        SqlCnn.Close();

        if (pass.Equals(n))
            this._password = n;

        return pass.Equals(n);
    }

    public string Email()
    {
        return _email;
    }

    public void Password(string pass)
    {
        _password = pass;

        ActualizarBD(false);
    }

    static public DataTable ObterTodos()
    {
        DataTable dt = new DataTable();

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csUtilizadores"].ConnectionString))
        {
            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Email from Users", con))
            {
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                adpt.Fill(dt);
            }

        }

        return dt;
    }
}