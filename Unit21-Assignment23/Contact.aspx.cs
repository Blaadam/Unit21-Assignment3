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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbName.Focus();
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

                // Create a query to submit data into
                string InsertQuery = @"INSERT INTO Contact_Table(Name, Email, Message) values(@Name, @Email, @Message)";

                SqlCommand InsertQueryCommand = new SqlCommand(InsertQuery, MainConnection);
                InsertQueryCommand.Parameters.AddWithValue("@Name", tbName.Text);
                InsertQueryCommand.Parameters.AddWithValue("@Email", tbEmail.Text);

                string ContactString = "";

                // If the entered message is greater than 125 characters - trim the end
                if (tbMessage.Text.Length > 125)
                {
                    ContactString = tbMessage.Text.Remove(125);
                }
                else
                {
                    ContactString = tbMessage.Text;
                }
                InsertQueryCommand.Parameters.AddWithValue("@Message", ContactString);

                // Execute the query - without expecting a result
                InsertQueryCommand.ExecuteNonQuery();

                // Close the connection to optimise the Database
                MainConnection.Close();

                // Thank the client and redirect them to the home page
                Response.Write("Thank you for your submission");
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
                //throw;
            }
        }
    }
}