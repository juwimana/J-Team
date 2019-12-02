using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using main_master.sql;
using System.Data;

namespace main_master
{
    public partial class eagleboard : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            require_login();

            build_data();

            

            if (Session["edit"] !=null) {
                string loc = Session["last_tab"].ToString();
                string loc2 = Session["last_radio"].ToString();

                if (loc == "new-tab")
                {
                    give_title_textbox.Text = (string)Session["title"];
                    give_desc_textbox.Text = (string)Session["description"];
                    string s = "$(document).ready(function () {document.getElementById('" + loc + "').click();});";
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", s, true);
                    loc = Session["last_radio"].ToString();
                    string s2 = "$(document).ready(function () {document.getElementById('" + loc2 + "').click();});";
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", s2, true);

                }
                else {
                    string s = "$(document).ready(function () {document.getElementById('" + loc + "').click();});";
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", s, true);
                }
                
            }



            


        }

        protected void preview_give_button_click(object sender, EventArgs e)
        {

            if (Page.IsValid) {


                System.IO.Stream fs = give_image_upload.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                Session.Add("image_array", bytes);
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);



                Session.Add("title", give_title_textbox.Text);
                Session.Add("description", give_desc_textbox.Text);
                Session.Add("image", str);
                Session.Add("last_tab", "new-tab");
                Session.Add("last_radio", "gives_radio");
                Session.Add("board", 0);

                Response.Redirect("new_post.aspx");


            }


        }


        protected void preview_project_button_click(object sender, EventArgs e) {

            if (Page.IsValid)
            {

                System.IO.Stream fs = project_image_upload.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                Session.Add("image_array", bytes);
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);



                Session.Add("title", give_title_textbox.Text);
                Session.Add("description", give_desc_textbox.Text);
                Session.Add("image", str);
                Session.Add("last_tab", "new-tab");
                Session.Add("last_radio", "project_radio");
                Session.Add("board", 1);

                Response.Redirect("new_post.aspx");


            }



        }

        protected void preview_poll_button_click(object sender, EventArgs e) {


            System.IO.Stream fs = poll_image_upload.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            Session.Add("image_array", bytes);
            string str = Convert.ToBase64String(bytes, 0, bytes.Length);

            List<string> options = new List<string>();

            if (option_textbox_1.Text != null) { options.Add(option_textbox_1.Text); }
            if (option_textbox_2.Text != null) { options.Add(option_textbox_2.Text); }
            if (option_textbox_3.Text != null) { options.Add(option_textbox_3.Text); }
            if (option_textbox_4.Text != null) { options.Add(option_textbox_4.Text); }
            if (option_textbox_5.Text != null) { options.Add(option_textbox_5.Text); }
            if (option_textbox_6.Text != null) { options.Add(option_textbox_6.Text); }
            if (option_textbox_7.Text != null) { options.Add(option_textbox_7.Text); }
            if (option_textbox_8.Text != null) { options.Add(option_textbox_8.Text); }
            if (option_textbox_9.Text != null) { options.Add(option_textbox_9.Text); }
            if (option_textbox_10.Text != null) { options.Add(option_textbox_10.Text); }





            Session.Add("title", poll_title_textbox.Text);
            Session.Add("description", poll_description_textbox.Text);
            Session.Add("image", str);
            Session.Add("last_tab", "new-tab");
            Session.Add("last_radio", "poll_radio");
            Session.Add("board", 2);
            Session.Add("options", options);

            Response.Redirect("new_post.aspx");



        }

        void convert_rows_to_string_and_publish(ref List<data_row> data_rows)
        {


            string table_string_all = @"<table class=""table"" id= ""all_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_gives = @"<table class=""table"" id= ""gives_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_project = @"<table class=""table"" id= ""project_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_poll = @"<table class=""table"" id= ""poll_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";

            foreach (data_row r in data_rows)
            {
                table_string_all = table_string_all + r.get_row_string();
                if (r.get_board_id().CompareTo("gives_board") == 0) { table_string_gives = table_string_gives + r.get_row_string(); }
                else if (r.get_board_id().CompareTo("project_board") == 0) { table_string_project = table_string_project + r.get_row_string(); }
                else if (r.get_board_id().CompareTo("poll_board") == 0) { table_string_poll = table_string_poll + r.get_row_string(); }
            }
            table_string_all = table_string_all + "</tbody></table>";
            table_string_gives = table_string_gives + "</tbody></table>";
            table_string_project = table_string_project + "</tbody></table>";
            table_string_poll = table_string_poll + "</tbody></table>";

            all_lit.Text = table_string_all;
            gives_lit.Text = table_string_gives;
            project_lit.Text = table_string_project;
            poll_lit.Text = table_string_poll;

        }


        void build_data()
        { 
            string query = "select * from [Board_Post]";
            SqlDataReader reader = SqlUtil.ExecuteReader(query);
            List<data_row> all_rows = new List<data_row>();
            string board = "";
            while (reader.Read())
            {
                if (reader.GetByte(4)== 0) {
                    board = "gives_board";
                } else
                if (reader.GetByte(4) == 1)
                {
                    board = "project_board";
                } else
                    if (reader.GetByte(4) == 2)
                {
                    board = "poll_board";
                }


                



                all_rows.Add(new data_row(board, reader.GetString(2), reader.GetDateTime(5), (Guid)reader["BpostID"]));
                
            }

            reader.Close();
            convert_rows_to_string_and_publish(ref all_rows);


        }
        protected void require_login()
        {

            if (Session["uid"] == null)
            {
                Response.Redirect("/login.aspx");

            }

        }


        class data_row
        {
            const string poll_title = "Poll";
            const string project_title = "Project";
            const string gives_title = "Gives";
            string board_id;
            string board;
            string title;
            DateTime date;
            string row_string = "";
            Guid bpostid;

            public data_row(string in_board_id, string in_title, DateTime in_date, Guid in_bpostid)
            {
                title = in_title;
                date = in_date;
                bpostid = in_bpostid;
                board_id = in_board_id;
                if (board_id.CompareTo("gives_board") == 0) { board = gives_title; }
                else if (board_id.CompareTo("project_board") == 0) { board = project_title; }
                else if (board_id.CompareTo("poll_board") == 0) { board = poll_title; }
            }

            public string get_row_string()
            {
                string link = "view/" + bpostid.ToString();
                row_string = @"<tr class=""clickable-row"" data-href=""" + link +  @"""> <th scope=""row"">" + board + "</th> <td>" + title + "</td> <td>" + Convert.ToString(date) + "</td> </tr>";
                //creates a row of a bootstrap table in html
                return row_string;
            }

            public string get_board_id()
            {
                return board_id;
            }

        }
    }
}