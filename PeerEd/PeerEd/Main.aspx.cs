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
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        string selectedTopic = "";
        string selectedSubject = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            selectedSubject = ddlSubject.SelectedItem.Text;
            selectedTopic = ddlTopic.SelectedItem.Text;
            
            Panel1.Controls.Clear();
            embedVideos();
        }

        protected void embedVideos()
        {
            List<string> videoList = new List<string>();
            videoList = getVideosAttribute(selectedSubject, selectedTopic, "Link");

            for (int i = 0; i < videoList.Count(); i++)
            {
                var videoFrame = new Literal();
                videoFrame.Text = string.Format(@"<iframe width=""560"" height=""340"" src=""{0}"" frameborder=""0"" allowfullscreen></iframe>", videoList[i]);
                Panel1.Controls.Add(videoFrame);
                Panel1.Controls.Add(new LiteralControl("<br /> <br />"));
            }
                
        }

        protected void ddlTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedTopic = ddlTopic.SelectedItem.Text;
            Panel1.Controls.Clear();
            embedVideos();

        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSubject = ddlSubject.SelectedItem.Text;
            Panel1.Controls.Clear();
            embedVideos();
        }

        private List<string> getVideosAttribute(string subject, string topic, string attribute)
        {
            List<string> videoList = new List<string>();

            string sql = "SELECT " + attribute + " FROM Videos INNER JOIN Topics ON Videos.Topic_ID = Topics.Topic_ID WHERE Subject = @subject AND Name =  @topic";

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
            catch (Exception ex)
            {
                throw ex;
            }

            return videoList;
        }
    }
}