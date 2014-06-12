using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ViewLayer
{
    public partial class painel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable tabela = new DataTable();

            DataColumn coluna1 = new DataColumn("nr-anuncio", Type.GetType("System.String"));
            DataColumn coluna2 = new DataColumn("nm-anuncio", Type.GetType("System.String"));
            DataColumn coluna3 = new DataColumn("data-inicial", Type.GetType("System.String"));

            tabela.Columns.Add(coluna1);
            tabela.Columns.Add(coluna2);
            tabela.Columns.Add(coluna3);           

            //Executa a consulta dos livros           


            
                    DataRow linha = tabela.NewRow();

                    linha["nr-anuncio"] = "123";
                    linha["nm-anuncio"] = "Punto";
                    linha["data-inicial"] = "12/02/2014";
                    

                    tabela.Rows.Add(linha);
           

                GridView1.DataSource = tabela;
                GridView1.DataBind();
        }

        protected void deleta_Click(object sender, EventArgs e)
        {

        }

        protected void altera_Click(object sender, EventArgs e)
        {

        }
    }
}