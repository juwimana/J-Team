using main_master.sql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] != null)
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Error.Text = "";
            List<SqlParameter> check_parameters = new List<SqlParameter>();
            check_parameters.Add(new SqlParameter("@email", email.Text));
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM User_Main WHERE Email = @email", check_parameters);
            if (reader.Read())
            {
                Error.Text = "A user with that email alreader exists.";
                reader.Close();
                return;
            }

            reader.Close();

            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@email", email.Text));
            parameters.Add(new SqlParameter("@fname", fname.Text));
            parameters.Add(new SqlParameter("@lname", lname.Text));
            parameters.Add(new SqlParameter("@password", password.Text));
            int rows =SqlUtil.ExecuteNonQuery("INSERT INTO User_Main (Email, User_Type, Fname, Lname, Last_Login, Password) VALUES (@email, 2, @fname, @lname, GETDATE(), @password)", parameters);
            if (rows == 1)
            {
                Response.Redirect("Main.aspx");
            }
        }
    }
}