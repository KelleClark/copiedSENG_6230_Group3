using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeerEd
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedTopic = ddlTopic.SelectedItem.Text;
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSubject = ddlSubject.SelectedItem.Text;
        }
    }
}