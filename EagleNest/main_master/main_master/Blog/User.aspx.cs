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
    public partial class User : Page
    {

        protected string uid = "";
        protected string name = "";
        protected bool followingUser = false;
        protected List<BlogPost> posts = new List<BlogPost>();
        protected List<UserProfile> following = new List<UserProfile>();
        protected List<UserProfile> followers = new List<UserProfile>();

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();
            uid = segments[0];

            Guid id;
            if (!Guid.TryParse(uid, out id))
            {
                Response.Redirect(ResolveUrl("UserNotFound.aspx"));
            }
            
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", uid));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Fname, Lname FROM User_Main WHERE ID_Num = @uid", parameters);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect(ResolveUrl("UserNotFound.aspx"));
            }

            name = reader["Fname"] + " " + reader["Lname"];

            reader.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("uid", uid));

            SqlDataReader r = SqlUtil.ExecuteReader("SELECT * FROM Blog_Post WHERE ID_Num = @uid", parameters);
            while (r.Read())
            {
                BlogPost post = new BlogPost();
                post.blogID = Guid.Parse(r["BlogID"].ToString());
                post.title = r["Title"].ToString();
                post.body = r["Body"].ToString();
                posts.Add(post);
            }

            r.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("@uid", uid));
            r = SqlUtil.ExecuteReader("SELECT *, User_Main.Fname, User_Main.Lname, User_Main.ID_Num FROM BlogFollowers" +
                " INNER JOIN User_Main ON BlogFollowers.Follower = User_Main.ID_Num" +
                " WHERE Following = @uid", parameters);

            while (r.Read()) {
                UserProfile user = new UserProfile();
                user.name = r["Fname"] + " " + r["Lname"];
                user.uid = Guid.Parse(r["ID_Num"].ToString());
                following.Add(user);
            }

            r.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("@uid", uid));
            r = SqlUtil.ExecuteReader("SELECT *, User_Main.Fname, User_Main.Lname, User_Main.ID_Num FROM BlogFollowers" +
                " INNER JOIN User_Main ON BlogFollowers.Following = User_Main.ID_Num" +
                " WHERE Follower = @uid", parameters);

            while (r.Read()) {
                UserProfile user = new UserProfile();
                user.name = r["Fname"] + " " + r["Lname"];
                user.uid = Guid.Parse(r["ID_Num"].ToString());
                followers.Add(user);
            }

            r.Close();

            if (Session["loggedIn"] != null)
            {
                parameters.Clear();
                parameters.Add(new SqlParameter("profile_uid", uid));
                parameters.Add(new SqlParameter("uid", Session["uid"]));

                r = SqlUtil.ExecuteReader("SELECT * FROM BlogFollowers WHERE Following = @profile_uid AND Follower = @uid", parameters);
                if (r.Read())
                {
                    followingUser = true;
                }

                r.Close();
            }
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            parameters.Add(new SqlParameter("follow_uid", Guid.Parse(uid)));

            SqlUtil.ExecuteNonQuery("INSERT INTO BlogFollowers (Following, Follower) VALUES (@follow_uid, @uid)", parameters);
        }

        protected void unfollow_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            parameters.Add(new SqlParameter("follow_uid", Guid.Parse(uid)));

            SqlUtil.ExecuteNonQuery("DELETE FROM BlogFollowers WHERE Following = @follow_uid AND Follower = @uid", parameters);
        }
    }
}