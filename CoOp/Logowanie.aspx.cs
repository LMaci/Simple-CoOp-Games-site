using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoOp
{
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                int admin = int.Parse(Session["Admin"].ToString());
                if (admin == 1)
                    Response.Redirect("/Dodawanie");
            }
            else
            {
                Session["Admin"] = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == "admin") && (TextBox2.Text == "123"))
            {
                Session["Admin"] = 1;
                Response.Redirect("/Dodawanie");
            }
            else
            {
                Label1.Text = "Zły login lub hasło!";
            }

        }
    }
}