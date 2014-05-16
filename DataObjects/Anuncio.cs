using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataObjects
{
    public class Anuncio
    {
        private string nome;

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        private int numero;

        public int Numero
        {
            get { return numero; }
            set { numero = value; }
        }

        private Anunciante anunciante;

        public Anunciante Anunciante
        {
            get { return anunciante; }
            set { anunciante = value; }
        }

        private List<Localidade> localidades;

        public List<Localidade> Localidades
        {
            get { return localidades; }
            set { localidades = value; }
        }

        private Veiculo veiculo;

        public Veiculo Veiculo
        {
            get { return veiculo; }
            set { veiculo = value; }
        }

    }
}