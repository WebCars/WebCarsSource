using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataObjects;

namespace ViewLayer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void entrarButton_Click(object sender, EventArgs e)
        {
            Anunciante user = new Anunciante();
            user.Nome = "Edian Maroto";

            HttpContext.Current.Session["usuario"] = user;


        }
    }
}