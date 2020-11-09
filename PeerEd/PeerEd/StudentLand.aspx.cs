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
	public partial class StudentLand : System.Web.UI.Page
	{
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DAVISS17\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
		{
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
			string username = "";
			string password = "";

			username = textBoxUsername.Text;
			password = textBoxPassword.Text;

            if(loginIsValid(username, password))
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                lblLoginMessage.Text = "Username or password is incorrect";
                lblLoginMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool loginIsValid(string username, string password)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("sp_LoginAuth", conn)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                command.Parameters.AddWithValue("@UserName", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue;
                conn.Open();
                int result = -1;
                command.ExecuteNonQuery();
                result = (int)command.Parameters["@retValue"].Value;
                if (result == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                
            }

        }

    }
}