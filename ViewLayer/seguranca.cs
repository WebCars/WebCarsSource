using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataObjects;

namespace ViewLayer
{
    public class seguranca:IHttpModule
    {

        HttpApplication application;
        HttpContext context;

        //evento pre-definido
        public void Init(HttpApplication application)
        {
            application.PreRequestHandlerExecute += (new EventHandler(this.PreRequestHandlerExecute));
        }

        //evento pre-definido
        private void PreRequestHandlerExecute(Object source, EventArgs e)
        {
            
            //obtem dados da aplicacao http (site)
            application = (HttpApplication)source;
            context = application.Context;
            //obtem o nome do arquivo que está sendo acessado
            string origem = context.Request.FilePath;
            if (!origem.Contains("aspx"))
            {
                return;
            }

           
            //se houver usuario logado, e o site já estiver carregado
            //verifica qual é o usuario para definir permissoes de acesso
            //se nao houver usuário logado, sempre direciona para a tela de login
            //A sessão "usuario" é utilizada para armazenar o usuario logado, gravando esta informacao
            //apos efetuar o logon da aplicacao
            /*if (context.Session != null && context.Session["usuario"] == null)
            {
                //somente chama a tela de login se a origem nao for a propria tela
                //faz isso, pois no primeira acesso é solicitada a tela de login
                if (!origem.Contains("login.aspx"))
                {
                    //chama a tela de login
                    context.Response.Redirect("~/login.aspx", true);
                }
            }
            else 
            {*/
                //exemplo
                //Cria objeto usuario local, baseado no objeto da sessao
                //A sessao objUsuario armazena um objeto usuario, o qual
                //mantem as informações relacionadas as permissoes de acesso ao usuario
                 /*Anunciante user = (Anunciante)context.Session["usuario"];
                 
                List<string> a = HttpContext.Current.Application["paginaSegura"] as List<string>;

                if (a.Contains(origem) &&
                    !user.getAcessoCadastro())
                {
                    //se o usuario nao tiver permissao de acessar a pagina, ele é direcionado para uma página de erros
                    context.Response.Redirect("~/erropermissao.aspx", true);
                }*/
        }

        //metodo padrao para descarregar a classe
        public void Dispose()
        { }
    }
}