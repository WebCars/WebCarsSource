using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataObjects;

namespace ViewLayer
{
    public partial class topBarUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              // faz dizer olá na barra!
            getCurrentUser();
        }

        private void getCurrentUser()
        {
            if (HttpContext.Current.Session["usuario"] != null)
            {
                logado.Visible = true;
                login.Visible = false;
                Anunciante user = (Anunciante)HttpContext.Current.Session["usuario"];

                usuarioLogadoLabel.Text = "Olá " + user.Nome;
            }
            else
            {
                logado.Visible = false;
                login.Visible = true;
            }
        }

        protected void sairLink_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}