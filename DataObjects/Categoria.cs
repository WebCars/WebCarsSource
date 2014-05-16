using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataObjects
{
    public class Categoria
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string descricao;

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }

        private List<Opcionais> opcionais;

        public List<Opcionais> Opcionais
        {
            get { return opcionais; }
            set { opcionais = value; }
        }
 
    }
}