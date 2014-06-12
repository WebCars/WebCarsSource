using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewLayer
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            colocaAnoDropDownList();


            
        }

        private void colocaAnoDropDownList()
        {
            DateTime begin = Convert.ToDateTime("01/01/1900");
            DateTime end = DateTime.Now;
            int cont = 0;
            for (DateTime date = end; date >= begin; date = date.AddYears(-1))
            {
                anoInicialDropDownList1.Items.Insert(cont, new ListItem(date.Year.ToString(), date.Year.ToString()));
                anoFinalDropDownList2.Items.Insert(cont, new ListItem(date.Year.ToString(), date.Year.ToString()));
                cont++;
            }
        }
        
    }
}