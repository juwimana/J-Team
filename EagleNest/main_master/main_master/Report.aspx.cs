using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class Report : System.Web.UI.Page
    {

        int post_type;
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            IList<string> segments = Request.GetFriendlyUrlSegments();
            string type = segments[0].ToLower();
            id = segments[1];

            switch (type)
            {
                case "gallery":
                    post_type = 0;
                    break;
                case "board":
                    post_type = 1;
                    break;
                case "blog":
                    post_type = 2;
                    break;
                case "intern":
                    post_type = 3;
                    break;
                case "connect":
                    post_type = 4;
                    break;
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@id", id));
            parameters.Add(new SqlParameter("@type", post_type));
            parameters.Add(new SqlParameter("@reporter", Session["uid"]));
            parameters.Add(new SqlParameter("@date", DateTime.Now));
            parameters.Add(new SqlParameter("@comment", Comment.Text));

            SqlUtil.ExecuteNonQuery("INSERT INTO Moderation (PostId, Type, ID_Num, Date, Comment, Mod_Status) VALUES (@id, @type, @reporter, @date, @comment, 1)", parameters);
        }
    }
}