using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoOp
{
    public partial class Dodawanie : System.Web.UI.Page
    {
        public CoOpEntities db = new CoOpEntities();
        GRA gra = new GRA();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = false;
        }

    

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(!String.IsNullOrEmpty(tbTytul.Text))
            {
                gra.TYTUL = tbTytul.Text.ToString();
                gra.PLATFORMA = int.Parse(RadioButtonList1.SelectedValue);
                gra.GATUNEK = DropDownList1.SelectedIndex + 1;
                gra.INTERNET = int.Parse(tbInternet.Text.ToString());
                gra.LAN = int.Parse(tbLAN.Text.ToString());
                gra.SPLIT = int.Parse(tbSplit.Text.ToString());
                gra.OPIS = tbOpis.Text.ToString();
                string sciezka = null;
                if (FileUpload1.HasFile)
                {
                    try
                    {
                        string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/IMG/") + filename);
                        Label1.Text = "Status wysyłania: Gotowe!";
                        sciezka = filename;
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "Błąd: " + ex.Message;
                    }
                }
                gra.OBRAZEK = sciezka;
                db.GRA.Add(gra);
                db.SaveChanges();
                Label1.Text = "DODANO GRĘ " + TextBox1.Text + "!";
            }
            else
            {
                Label1.Text = "Uzupełnij brakujące dane!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("/Default");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (sprawdz())
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else Response.Redirect("/Logowanie");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (sprawdz())
            {
                Panel3.Visible = true;
                Panel2.Visible = false;
            }
            else Response.Redirect("/Logowanie");
        }

        protected void btUsun_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                db.removeGame(TextBox1.Text);
                db.SaveChanges();
                Label1.Text = "USUNIĘTO GRĘ " + TextBox1.Text + "!";
            }
        }

        private bool sprawdz()
        {
            try
            {
                if (Session["Admin"].ToString() == "1")
                    return true;
                else return false;
            }
            catch { return false; }

        }
    }
}