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
			tbPassword.Focus();
		}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
			const string SQLStringConnection = "18worden.a@thestudio-liverpool.netConnectionString";
			try
			{
				// Create a connection string
				SqlConnection MainConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[SQLStringConnection].ConnectionString);

				MainConnection.Open();

				// Check to see if user exists
				string CheckUser = "Select count (*) from Users_Table where username = '" + tbUsername.Text + "'";

				// Executing the query
				SqlCommand Command = new SqlCommand(CheckUser, MainConnection);
				int TempData = Convert.ToInt32(Command.ExecuteScalar().ToString());
				MainConnection.Close();

				if (TempData == 1)
				{
					MainConnection.Open();

					string CheckPassword = "Select password from Users_Table where username = '" + tbUsername.Text + "'";
					SqlCommand PasswordCommand = new SqlCommand(CheckPassword, MainConnection);

					string ReturnedPassword = PasswordCommand.ExecuteScalar().ToString().Replace(" ", "");

					if (ReturnedPassword == tbPassword.Text)
					{
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
    }
}