using main_master.sql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Moderation
{
    public partial class Main : Page
    {

        public List<Report> reports = new List<Report>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null)
            {
                Response.Redirect(ResolveUrl("~/Login.aspx"));
            }

            int user_type = Convert.ToInt32(Session["type"]);
            if (user_type == 2) //normal user dont allow
            {
                Response.Redirect(ResolveUrl("~/Main.aspx"));
            }

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT *, User_Main.Fname, User_Main.Lname FROM Moderation" +
                " INNER JOIN User_Main ON User_Main.ID_Num = Moderation.ID_Num");
            
            while (reader.Read())
            {
                Report report = new Report();
                report.id = Guid.Parse(reader["Id"].ToString());
                report.post_id = Guid.Parse(reader["PostId"].ToString());
                report.post_type = Convert.ToInt32(reader["Type"]);
                switch (report.post_type)
                {
                    case 0:
                        report.post_type_str = "Gallery";
                        report.link = "~/Gallery/Main.aspx";
                        break;
                    case 1:
                        report.post_type_str = "Board";
                        report.link = "~/Board/View/" + report.post_id;
                        break;
                    case 2:
                        report.post_type_str = "Blog";
                        report.link = "~/Blog/View/" + report.post_id;
                        break;
                    case 3:
                        report.post_type_str = "Intern";
                        report.link = "~/Intern/Main.aspx";
                        break;
                    case 4:
                        report.post_type_str = "Connect";
                        report.link = "~/Connect/Main.aspx";
                        break;
                }
                report.reporter_id = Guid.Parse(reader["ID_Num"].ToString());
                report.reporter_name = reader["Fname"] + " " + reader["Lname"];
                report.date = DateTime.Parse(reader["Date"].ToString());
                report.comment = reader["Comment"].ToString();
                report.status = Convert.ToInt32(reader["Mod_Status"].ToString());
                reports.Add(report);
            }

            reader.Close();
        }
    }
}