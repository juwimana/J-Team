using System;
using main_master.sql;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Board
{
    public partial class Post_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@Title", title.Text));
            parameters.Add(new SqlParameter("@Image", Picture.Text));
            parameters.Add(new SqlParameter("@Tags", Tags.Text));
            parameters.Add(new SqlParameter("@Discription", Description.Text));
            int rows = SqlUtil.ExecuteNonQuery("INSERT INTO Gallery_Post (Title, Image, Tags, Date, Discription) VALUES (@Title, @Image, @Tags, GETDATE(), @Discription)", parameters);
            if (rows == 1)
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void Picture_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
