using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Principal;
using System.Data;
using System.Net;
using System.Net.Sockets;

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
            if (UrlIsValid(link))
            {
                rfvLink.ErrorMessage = "Link is not valid.";
                string message = insertVideo(subject, topic, link);
                lblMessage.Text = message;
            }
        }

        public static bool UrlIsValid(string url)
        {
            //check URL is valid URL

            //then check URL is embed URL

            return true;
        }

        private string insertVideo(string subject, string topic, string link)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("sp_AddVideo", conn)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                command.Parameters.AddWithValue("@Subject", subject);
                command.Parameters.AddWithValue("@Topic", topic);
                command.Parameters.AddWithValue("@Link", link);
                conn.Open();
                command.ExecuteNonQuery();
                return "Video Added Successfully!";
            }

        }
    }
}