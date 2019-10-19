using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoOp
{
    public partial class Xbox_One : System.Web.UI.Page
    {
        public CoOpEntities db = new CoOpEntities();
        GRA gra = new GRA();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = db.getXboxGames(4, 1);
            GridView1.DataBind();
            Panel1.Visible = true;
            Panel2.Visible = false;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int wybranaGra = int.Parse(GridView1.SelectedRow.Cells[0].Text);
            gra = db.GRA.First(a => a.ID == wybranaGra);
            switch (gra.PLATFORMA)
            {
                case 2:
                    lPlatforma.Text = "PC";
                    break;
                case 3:
                    lPlatforma.Text = "Xbox 360";
                    break;
                case 4:
                    lPlatforma.Text = "Xbox One";
                    break;
                case 5:
                    lPlatforma.Text = "PlayStation 3";
                    break;
                case 6:
                    lPlatforma.Text = "Playstation 4";
                    break;
            }

            lGame.Text = gra.TYTUL;
            if (gra.INTERNET > 1)
            {
                lOnline.Text = "Tak";
                lOnlineLiczba.Visible = true;
                lOnlineLiczba.Text = "( " + gra.INTERNET.ToString() + " )";
            }
            else
            {
                lOnline.Text = "Nie";
                lOnlineLiczba.Visible = false;
            }

            if (gra.LAN > 1)
            {
                lLan.Text = "Tak";
                lLanLiczba.Visible = true;
                lLanLiczba.Text = "( " + gra.LAN.ToString() + " )";
            }
            else
            {
                lLan.Text = "Nie";
                lLanLiczba.Visible = false;
            }

            if (gra.SPLIT > 1)
            {
                lSplit.Text = "Tak";
                lSplitLiczba.Visible = true;
                lSplitLiczba.Text = "( " + gra.SPLIT.ToString() + " )";
            }
            else
            {
                lSplit.Text = "Nie";
                lSplitLiczba.Visible = false;
            }

            switch (gra.GATUNEK)
            {
                case 2:
                    lGatunek.Text = "Akcja";
                    break;
                case 3:
                    lGatunek.Text = "Sportowa";
                    break;
                case 4:
                    lGatunek.Text = "Inne";
                    break;
            }

            lOpis.Text = gra.OPIS;

            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            switch (RadioButtonList1.SelectedValue)
            {
                case "Nieistotne":
                    GridView1.DataSource = db.getXboxGames(4, int.Parse(DropDownList2.SelectedValue));
                    break;

                case "Internet":
                    GridView1.DataSource = db.filterInternetGames(4, int.Parse(DropDownList2.SelectedValue));
                    break;

                case "LAN":
                    GridView1.DataSource = db.filterLANGames(4, int.Parse(DropDownList2.SelectedValue));
                    break;

                case "Split":
                    GridView1.DataSource = db.filterSPLITGames(4, int.Parse(DropDownList2.SelectedValue));
                    break;
            }
            GridView1.DataBind();
        }
    }
}