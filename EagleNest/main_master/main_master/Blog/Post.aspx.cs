using main_master.sql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Blog
{
    public partial class Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null) //TODO: tell the user they need to login
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Guid blogID = Guid.NewGuid();
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@title", title.Text));
            parameters.Add(new SqlParameter("@body", body.Text));
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            parameters.Add(new SqlParameter("@blogid", blogID));
            int rows = SqlUtil.ExecuteNonQuery("INSERT INTO Blog_Post (BlogID, ID_Num, Title, Body, Date) VALUES (@blogid, @uid, @title, @body, GETDATE())", parameters);
            if (rows == 1)
            {
                if (!string.IsNullOrWhiteSpace(tags.Text))
                {
                    string[] tags_array = tags.Text.Split(' ');
                    foreach (string tag in tags_array)
                    {
                        List<SqlParameter> tag_parameters = new List<SqlParameter>();
                        tag_parameters.Add(new SqlParameter("blogid", blogID));
                        tag_parameters.Add(new SqlParameter("tag", tag));
                        rows = SqlUtil.ExecuteNonQuery("INSERT INTO Tags (BlogID, Tag) VALUES (@blogid, @tag)", tag_parameters);
                    }
                }
                Response.Redirect("View/" + blogID);
            }
        }
    }
}