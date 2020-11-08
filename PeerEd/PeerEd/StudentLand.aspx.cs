using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO.Pipes;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeerEd
{
    public partial class WebForm3 System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\17046\source\repos\SENG_6230_Group3\PeerEd\PeerEd\App_Data\VideoDatabase.mdf;Integrated Security=True";
        string username = "";
        string psswrd = ""

        protected void ddlloginbutton_clicked(object sender, EventArgs e)
        {
        username = "" ;
        psswrd = "";

        }

        
    }
}