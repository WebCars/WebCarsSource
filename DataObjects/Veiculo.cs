using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataObjects
{
    public class Veiculo
    {
        private DateTime anoFab;

        public DateTime AnoFab
        {
            get { return anoFab; }
            set { anoFab = value; }
        }
        private DateTime anoModelo;

        public DateTime AnoModelo
        {
            get { return anoModelo; }
            set { anoModelo = value; }
        }
        private string color;

        public string Color
        {
            get { return color; }
            set { color = value; }
        }
        private Marca marca;

        public Marca Marca
        {
            get { return marca; }
            set { marca = value; }
        }
        private Categoria categoria;

        public Categoria Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }
        private List<Cambio> cambio;

        public List<Cambio> Cambio
        {
            get { return cambio; }
            set { cambio = value; }
        }
        private Combusivel combustivel;

        public Combusivel Combustivel
        {
            get { return combustivel; }
            set { combustivel = value; }
        }
        
    }
}