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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DAVISS17\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        string selectedTopic = "";
        string selectedSubject = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            selectedSubject = ddlSubject.SelectedItem.Text;
            selectedTopic = ddlTopic.SelectedItem.Text;
            GridView1.DataSource = getVideos(selectedSubject, selectedTopic);
            GridView1.DataBind();
        }

        protected void ddlTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedTopic = ddlTopic.SelectedItem.Text;
            List<string> videoList = new List<string>();
            videoList = getVideos(selectedSubject, selectedTopic);
            GridView1.DataSource = videoList;
            GridView1.DataBind();

        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSubject = ddlSubject.SelectedItem.Text;
        }

        private List<string> getVideos(string subject, string topic)
        {
            List<string> videoList = new List<string>();

            string sql = "SELECT Title FROM Videos WHERE Subject = @subject AND Topic =  @topic";
            SqlConnection cnn = new SqlConnection(connectionString);
            SqlDataReader dataReader;
            SqlCommand command;
            try
            {
                cnn.Open();
                command = new SqlCommand(sql, cnn);
                command.Parameters.AddWithValue("subject", subject);
                command.Parameters.AddWithValue("topic", topic);
                dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    videoList.Add(dataReader.GetValue(0).ToString());
                }
                dataReader.Close();
                command.Dispose();
                cnn.Close();

            }
            catch(Exception ex)
            {
                throw ex;
            }

            return videoList;
        }
    }
}