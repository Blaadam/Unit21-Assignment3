using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Unit21_Assignment23
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbFirstName.Focus();
        }

        // Click Events

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
                    Response.Write("This account already exists.");
                    return;
                }

                // Reopen the connection to send queries
                MainConnection.Open();

                // Create a query to insert the registration information into a table
                string InsertQuery = @"INSERT INTO Users_Table(firstName, lastName, email, username, password, addressLine1, addressLine2, addressLine3, addressLine4, postcode) values(@firstName, @lastName, @email, @username, @password, @addressLine1, @addressLine2, @addressLine3, @addressLine4, @postcode)";

                SqlCommand InsertQueryCommand = new SqlCommand(InsertQuery, MainConnection);
                InsertQueryCommand.Parameters.AddWithValue("@firstName", tbFirstName.Text);
                InsertQueryCommand.Parameters.AddWithValue("@lastName", tbSurname.Text);
                InsertQueryCommand.Parameters.AddWithValue("@email", tbEmail.Text);
                InsertQueryCommand.Parameters.AddWithValue("@username", tbUsername.Text);
                InsertQueryCommand.Parameters.AddWithValue("@password", tbPassword.Text);
                InsertQueryCommand.Parameters.AddWithValue("@addressLine1", tbAddressL1.Text);
                InsertQueryCommand.Parameters.AddWithValue("@addressLine2", tbAddressL2.Text);
                InsertQueryCommand.Parameters.AddWithValue("@addressLine3", tbAddressL3.Text);
                InsertQueryCommand.Parameters.AddWithValue("@addressLine4", tbAddressL4.Text);
                InsertQueryCommand.Parameters.AddWithValue("@postcode", tbPostcode.Text);

                // Execute the query - without expecting a result
                InsertQueryCommand.ExecuteNonQuery();

                // Close the connection to optimise the Database
                MainConnection.Close();

                Response.Write("Successfully created an account. Please Login");

                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbFirstName.Text = string.Empty;
            tbSurname.Text = string.Empty;
            tbEmail.Text = string.Empty;
            tbConfirmEmail.Text = string.Empty;
            tbUsername.Text = string.Empty;
            tbPassword.Text = string.Empty;
            tbConfirmPass.Text = string.Empty;
            tbAddressL1.Text = string.Empty;
            tbAddressL2.Text = string.Empty;
            tbAddressL3.Text = string.Empty;
            tbAddressL4.Text = string.Empty;
            tbPostcode.Text = string.Empty;
        }
    }
}