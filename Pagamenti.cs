using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DipendentiEdili
{
    public class Pagamenti
    {
        public DateTime Dal { get; set; }
        public DateTime Al { get; set; }
        public int Importo { get; set; }
        public string TipoRemunerazione { get; set; }
        public int IDDipendente { get; set; }


    }
}