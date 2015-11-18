using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;

namespace BaseDados
{
    public partial class SqlDB
    {
        string ConString;
        SqlConnection SqlCon;

        //Property
        public SqlConnection SqlConDB
        {
            get { return SqlCon; }
            set { SqlCon = value; }
        }

        //Constructor
        public SqlDB(string database)
        {
            ConString = ConfigurationManager.ConnectionStrings[database].ConnectionString;
            SqlCon = new SqlConnection(ConString);
            return;
        }
    }
}