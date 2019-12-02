using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Blog
{
    public partial class View : System.Web.UI.Page
    {

        protected Guid blogID;
        protected string title;
        protected string author_name;
        protected Guid author_uid;
        protected DateTime date;
        protected string body;
        protected string[] tags;
        protected bool author = false;
        protected List<Comment> comments = new List<Comment>();

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();

            if (!Guid.TryParse(segments[0], out blogID))
            {
                Response.Redirect(ResolveUrl("PostNotFound.aspx"));
            }

            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("blogid", blogID));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Blog_Post.*, User_Main.Fname, User_Main.Lname FROM Blog_Post" +
                " INNER JOIN User_Main ON Blog_Post.ID_Num = User_Main.ID_Num" +
                " WHERE BlogID = @blogid", parameters);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("PostNotFound.aspx");
                return;
            }

            title = reader["Title"].ToString();
            body = reader["Body"].ToString();
            author_name = reader["Fname"] +  " " + reader["Lname"];
            author_uid = Guid.Parse(reader["ID_Num"].ToString());
            date = DateTime.Parse(reader["Date"].ToString());

            if (Session["uid"] != null)
            {
                if (Session["uid"].ToString() == reader["ID_Num"].ToString())
                {
                    author = true;
                }
            }

            reader.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("blogid", blogID));

            SqlDataReader r = SqlUtil.ExecuteReader("SELECT * FROM Post_Comment WHERE BlogID = @blogid", parameters);
            while (r.Read())
            {
                Comment comment = new Comment();
                comment.name = r["Name"].ToString();
                comment.comment = r["Comment"].ToString();
                comments.Add(comment);
            }

            r.Close();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("blogid", blogID));
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            parameters.Add(new SqlParameter("name", Name.Text));
            parameters.Add(new SqlParameter("comment", Comment.Text));
            parameters.Add(new SqlParameter("date", DateTime.Now));

            SqlUtil.ExecuteNonQuery("INSERT INTO Post_Comment (BlogID, ID_Num, Name, Date, Comment) VALUES (@blogid, @uid, @name, @date, @comment)", parameters);
        }
    }
}