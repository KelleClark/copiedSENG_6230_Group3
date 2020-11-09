using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeerEd
{
    public partial class SignUp : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DAVISS17\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            string confirmPassword = "";
            string firstName = "";
            string lastName = "";

            username = TextBoxUsername.Text;
            password = TextBoxPassword.Text;
            confirmPassword = TextBoxConfirmPassword.Text;
            firstName = TextBoxFirstName.Text;
            lastName = TextBoxLastName.Text;

            if(!password.Equals(confirmPassword))
            {
                lblMessage.Text = "Passwords do not match. Please try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                try
                {
                    lblMessage.Text = createUser(username, password, firstName, lastName);
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch
                {
                    lblMessage.Text = "There was a problem creating your account.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }        
           
        }

        private string createUser(string username, string password, string firstName, string lastName)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("sp_CreateUser", conn)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                command.Parameters.AddWithValue("@UserName", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                conn.Open();
                command.ExecuteNonQuery();
                return "Account Created Successfully!";
            }

        }
    }
}