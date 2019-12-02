using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Moderation
{
    public partial class Status : System.Web.UI.Page
    {

        string id;

        protected void Page_Load(object sender, EventArgs e)
        {

            IList<string> segments = Request.GetFriendlyUrlSegments();
            id = segments[0];

            if (!IsPostBack)
            {
                List<SqlParameter> parameters = new List<SqlParameter>();
                parameters.Add(new SqlParameter("id", id));
                SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM Moderation WHERE Id = @id", parameters);
                if (!reader.Read())
                {
                    Response.Redirect("Main.aspx");
                }

                ModStatus.SelectedIndex = Convert.ToInt32(reader["Mod_Status"]);
                PostId.Text = reader["Id"].ToString();

                reader.Close();
            }
        }
    }
}