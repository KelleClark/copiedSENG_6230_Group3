using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Principal;

namespace PeerEd
{
    public partial class AddVideo : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DAVISS17\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnAdd_ClientClick(object sender, EventArgs e)
        {
            string subject = TextBoxSubject.Text;
            string topic = TextBoxTopic.Text;
            string link = TextBoxLink.Text;
            string message = insertVideo(subject, topic, link);
            lblMessage.Text = message;
            
        }

        protected void btnClose_ClientClick(object sender, EventArgs e)
        {
            Response.Write("<script>window.close();</" + "script>");
            Response.End();

        }

        private string insertVideo(string subject, string topic, string link)
        {
            string sql = "INSERT INTO Videos Values(@link, @subject, @topic)";
            SqlConnection cnn = new SqlConnection(connectionString);
            SqlCommand command;
            try
            {
                cnn.Open();
                command = new SqlCommand(sql, cnn);
                command.CommandText = sql;
                command.Parameters.AddWithValue("@subject", subject);
                command.Parameters.AddWithValue("@topic", topic);
                command.Parameters.AddWithValue("@link", link);
                command.ExecuteNonQuery();
                cnn.Close();
                return "Video Added Successfully!";

            }
            catch (Exception ex)
            {
                return "Video Could Not Be Added.";
                throw ex;
            }

        }
    }
}