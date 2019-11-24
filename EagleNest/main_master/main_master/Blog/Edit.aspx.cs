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
    public partial class Edit : System.Web.UI.Page
    {

        protected string blogID;

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();
            blogID = segments[0];

            if (!IsPostBack)
            {
                Guid id;
                if (!Guid.TryParse(blogID, out id))
                {
                    Response.Redirect(ResolveUrl("PostNotFound.aspx"));
                }

                List<SqlParameter> parameters = new List<SqlParameter>();
                parameters.Add(new SqlParameter("blogid", blogID));
                SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM Blog_Post WHERE BlogID = @blogid", parameters);
                if (!reader.Read())
                {
                    Response.Redirect(ResolveUrl("PostNotFound.aspx"));
                }

                title.Text = reader["Title"].ToString();
                Body.Text = reader["Body"].ToString();

                reader.Close();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("title", title.Text));
            parameters.Add(new SqlParameter("body", Body.Text));
            parameters.Add(new SqlParameter("blogid", blogID));

            SqlUtil.ExecuteNonQuery("UPDATE Blog_Post SET Title = @title, Body = @body WHERE BlogID = @blogid", parameters);
        }
    }
}