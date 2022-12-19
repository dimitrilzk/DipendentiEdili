using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DipendentiEdili
{
    public class Dipendente
    {
        public int Id { get; set; }
        public string Nome { get; set;}
        public string Cognome { get; set;}
        public string Indirizzo { get; set;}
        public string CF { get; set;}
        public bool Sposato { get; set;}
        public int Figli { get; set;}
        public string Mansione { get; set;}
    }
}