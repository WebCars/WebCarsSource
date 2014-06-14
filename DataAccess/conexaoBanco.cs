using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
//Permite acesso ao web.config - lembrar de adicionar a referencia
using System.Configuration;
namespace DataAccess
{
    public class conexaoBanco
    {

        private SqlConnection conexao;

        public SqlConnection Conexao
        {
            get { return conexao; }
            set { conexao = value; }
        }

        private static conexaoBanco instance;

        public conexaoBanco()
        {
            conexao = new SqlConnection();
            conexao.ConnectionString = ConfigurationManager.ConnectionStrings["conexao"].ToString();
        }

        public static conexaoBanco Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new conexaoBanco();
                }
                return instance;
            }
        }
    }
}