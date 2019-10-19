using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CoOp
{
    public class Class1
    {
        public int ID { get; set; }
        public String Nazwa { get; set; }
        public String Platforma { get; set; }
        public String Gatunek { get; set; }
        public bool Online { get; set; }
        public int OnlineLiczba { get; set; }
        public bool LAN { get; set; }
        public int LANLiczba { get; set; }
        public bool Split { get; set; }
        public int SplitLiczba { get; set; }
        public string Opis { get; set; }

        public Class1()
        {
            ID = 0;
            Nazwa = null;
            Platforma = null;
            Gatunek = null;
            Online = false;
            OnlineLiczba = 0;
            LAN = false;
            LANLiczba = 0;
            Split = false;
            SplitLiczba = 0;
            Opis = null;
        }

        public Class1(int id, string nazwa, string platforma, string gatunek, bool online, int onlineliczba, bool lan, int lanliczba, bool split, int splitliczba, string opis)
        {
            ID = id;
            Nazwa = nazwa;
            Platforma = platforma;
            Gatunek = gatunek;
            Online = online;
            OnlineLiczba = onlineliczba;
            LAN = lan;
            LANLiczba = lanliczba;
            Split = split;
            SplitLiczba = splitliczba;
            Opis = opis;
        }

    }
}