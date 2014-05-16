using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataObjects
{
    public class Anunciante
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string senha;

        public string Senha
        {
            get { return senha; }
            set { senha = value; }
        }
        private string nome;

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        private string cidade;

        public string Cidade
        {
            get { return cidade; }
            set { cidade = value; }
        }
        private string estado;

        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }
        private string cpf;

        public string Cpf
        {
            get { return cpf; }
            set { cpf = value; }
        }

        private List<Anuncio> anuncios;

        public List<Anuncio> Anuncios
        {
            get { return anuncios; }
            set { anuncios = value; }
        }

        private List<Contato> contanto;

        public List<Contato> Contanto
        {
            get { return contanto; }
            set { contanto = value; }
        }        
    }
}