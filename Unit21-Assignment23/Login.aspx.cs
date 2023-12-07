using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Requirements for SQL
using System.Data.SqlClient;
using System.Configuration;

namespace Unit21_Assignment23
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbUsername.Focus();
            this.Form.DefaultButton = btnSubmit.UniqueID;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            const string SQLStringConnection = "18worden.a@thestudio-liverpool.netConnectionString";
            try
            {
                // Check if data on the page is able to be submitted
                if (!Page.IsValid)
                {
                    return;
                }

                // Create a connection string
                SqlConnection MainConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[SQLStringConnection].ConnectionString);

                MainConnection.Open();

                // Check to see if user exists
                string CheckUser = "Select count (*) from Users_Table where username = '" + tbUsername.Text + "'";

                // Executing the query
                SqlCommand Command = new SqlCommand(CheckUser, MainConnection);
                int TempData = Convert.ToInt32(Command.ExecuteScalar().ToString());

                // Temporarily close to prevent MITM
                MainConnection.Close();

                // Check if its exactly one account
                if (TempData == 1)
                {
                    // Reopen the connection to send a request
                    MainConnection.Open();

                    // Create a query to retrieve the password
                    string CheckPassword = "Select password from Users_Table where username = '" + tbUsername.Text + "'";
                    SqlCommand PasswordCommand = new SqlCommand(CheckPassword, MainConnection);

                    // Remove the whitespace from the password
                    string ReturnedPassword = PasswordCommand.ExecuteScalar().ToString().Replace(" ", "");

                    // Close the connection to optimise performance
                    MainConnection.Close();

                    // Compare Password Entry to the retrieved password
                    if (ReturnedPassword == tbPassword.Text)
                    {
                        // Log the users cookeie and redirect them to the home page.
                        Session["New"] = tbUsername.Text;
                        Response.Write("Password is correct");
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Response.Write("Password is incorrect");
                    }
                }
                else
                {
                    Response.Write("Username is incorrect");
                }

            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
                //throw;
            }
        }

        protected void tbUsername_TextChanged(object sender, EventArgs e)
        {
            if (!rfvUsername.IsValid) { rfvUsername.Visible = true; } else { rfvUsername.Visible = false; }
        }

        protected void tbPassword_TextChanged(object sender, EventArgs e)
        {
            if (!rfvPassword.IsValid) { rfvPassword.Visible = true; } else { rfvPassword.Visible = false; }
        }
    }
}