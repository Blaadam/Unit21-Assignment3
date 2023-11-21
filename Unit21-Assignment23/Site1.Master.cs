using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Unit21_Assignment23
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLogin.Focus();
            if (Session["New"] != null)
            {
                btnLogin.Visible = false;
                btnLogout.Visible = true;
                btnLogout.Text = "Not " + Session["New"] + "? Sign Out";
            }
            else
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}