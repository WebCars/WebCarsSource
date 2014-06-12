using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataObjects;
using DataAccess;

namespace BusinessLayer
{
    public class AnuncioBL
    {
        public List<global::DataObjects.Anuncio> destaques()
        {
            try
            {
                return null;
                //return new AnuncioDA().destaques();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}