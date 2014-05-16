using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataObjects
{
    public class Marca
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
    }
}