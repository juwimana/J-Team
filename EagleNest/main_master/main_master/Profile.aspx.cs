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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                List<SqlParameter> parameters = new List<SqlParameter>();
                parameters.Add(new SqlParameter("uid", Session["uid"]));
                SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM User_Main WHERE ID_Num = @uid", parameters);
                if (!reader.Read()) //this should never happen
                {
                    Response.Redirect("Main.aspx");
                    reader.Close();
                    return;
                }

                Uid.Text = reader["ID_Num"].ToString();
                FirstName.Text = reader["Fname"].ToString();
                LastName.Text = reader["Lname"].ToString();
                Major.Text = reader["Major"].ToString();
                Classification.SelectedValue = reader["Classification"].ToString();
                Phone.Text = reader["Phone"].ToString();
                OrgAffiliation.Text = reader["Org_Affiliation"].ToString();
                reader.Close();

                Password.Text = "";
                NewPassword.Text = "";
                NewPassword2.Text = "";
            }
        }

        protected void GeneralSubmit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("fname", FirstName.Text));
            parameters.Add(new SqlParameter("lname", LastName.Text));
            parameters.Add(new SqlParameter("major", Major.Text));
            parameters.Add(new SqlParameter("classification", Classification.Text));
            parameters.Add(new SqlParameter("phone", Phone.Text));
            parameters.Add(new SqlParameter("org", OrgAffiliation.Text));
            parameters.Add(new SqlParameter("uid", Session["uid"]));

            SqlUtil.ExecuteNonQuery("UPDATE User_Main SET Fname = @fname, Lname = @lname, Major = @major," +
                " Classification = @classification, Phone = @phone, Org_Affiliation = @org WHERE ID_Num = @uid", parameters);
        }

        protected void SecuritySubmit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            parameters.Add(new SqlParameter("password", Password.Text));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM User_Main WHERE Password = @password AND ID_NUM = @uid", parameters);
            if (!reader.Read())
            {
                Error.Text = "Incorrect password.";
                reader.Close();
                return;
            }

            reader.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("password", NewPassword.Text));
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            SqlUtil.ExecuteNonQuery("UPDATE User_Main SET Password = @password WHERE ID_Num = @uid", parameters);

            Password.Text = "";
            NewPassword.Text = "";
            NewPassword2.Text = "";
        }
    }
}