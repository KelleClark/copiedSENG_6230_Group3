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
    public partial class WebForm2 : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DAVISS17\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        string selectedTopic = "";
        string selectedSubject = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> subjectList = new List<string>();
            subjectList = getSubjects();
            ddlSubjectwatch.DataSource = subjectList;

            List<string> topicList = new List<string>();
            topicList = getTopics();
            ddlTopicwatch.DataSource = topicList;

            if (!IsPostBack)
            {
                ddlSubjectwatch.DataBind();
                ddlTopicwatch.DataBind();
            }

            selectedSubject = ddlSubjectwatch.SelectedItem.Text;
            selectedTopic = ddlTopicwatch.SelectedItem.Text;
            
            Panel1.Controls.Clear();
            embedVideos();

            
        }

        protected void embedVideos()
        {
            List<string> videoList = new List<string>();
            videoList = getVideosAttribute(selectedSubject, selectedTopic, "Link");

            if(videoList.Count != 0)
            {
                for (int i = 0; i < videoList.Count(); i++)
                {
                    var videoFrame = new Literal();
                    videoFrame.Text = string.Format(@"<iframe width=""560"" height=""340"" src=""{0}"" frameborder=""0"" allowfullscreen></iframe>", videoList[i]);
                    Panel1.Controls.Add(videoFrame);
                    Panel1.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;"));
                    if (((i+1)%3) == 0)
                    {
                        Panel1.Controls.Add(new LiteralControl("<br /> <br />"));
                    }
                    
                }
            }              
        }

        protected void ddlTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedTopic = ddlTopicwatch.SelectedItem.Text;
            Panel1.Controls.Clear();
            embedVideos();

        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedSubject = ddlSubjectwatch.SelectedItem.Text;
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

        private List<string> getSubjects()
        {
            List<string> subjectList = new List<string>();

            string sql = "SELECT DISTINCT Subject FROM Videos";

            SqlConnection cnn = new SqlConnection(connectionString);
            SqlDataReader dataReader;
            SqlCommand command;
            try
            {
                cnn.Open();
                command = new SqlCommand(sql, cnn);
                dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    subjectList.Add(dataReader.GetValue(0).ToString());
                }
                dataReader.Close();
                command.Dispose();
                cnn.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return subjectList;
        }

        private List<string> getTopics()
        {
            List<string> topicList = new List<string>();

            string sql = "SELECT DISTINCT Name FROM Topics ";

            SqlConnection cnn = new SqlConnection(connectionString);
            SqlDataReader dataReader;
            SqlCommand command;
            try
            {
                cnn.Open();
                command = new SqlCommand(sql, cnn);
                dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    topicList.Add(dataReader.GetValue(0).ToString());
                }
                dataReader.Close();
                command.Dispose();
                cnn.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return topicList;
        }
    }
}