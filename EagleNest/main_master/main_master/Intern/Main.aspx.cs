using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using main_master.sql;

namespace main_master
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void post_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@major", major.Text));
            parameters.Add(new SqlParameter("@classification", classification.Text));
            parameters.Add(new SqlParameter("@term", term.Text));
            parameters.Add(new SqlParameter("@company", company.Text));
            parameters.Add(new SqlParameter("@position", position.Text));
            parameters.Add(new SqlParameter("@company", company.Text));
            parameters.Add(new SqlParameter("@state", state.Text));
            parameters.Add(new SqlParameter("@city", city.Text));
            parameters.Add(new SqlParameter("@resources", resources.Text));
            parameters.Add(new SqlParameter("@description", description.Text));
            parameters.Add(new SqlParameter("@lessons", lessons.Text));
            parameters.Add(new SqlParameter("@email", email.Text));
            parameters.Add(new SqlParameter("@twitter", twitter.Text));
            parameters.Add(new SqlParameter("@linkedIn", linkedIn.Text));
            int reader = SqlUtil.ExecuteNonQuery("INSERT INTO Intern-Posting(position,Long_Disc.,Resources_Used,Lessons_Learned) VALUES " +
                "(@position,@description,@resources,@lessons)", parameters);
        }

        protected void country_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@country", major.Text));
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT country FROM User_Company", parameters);
        }
    }
}