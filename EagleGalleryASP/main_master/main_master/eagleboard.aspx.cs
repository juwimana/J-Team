using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class eagleboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            all_lit.Text = create_table_string("all_board");
            gives_lit.Text = create_table_string("gives_board");
            project_lit.Text = create_table_string("project_board");
            poll_lit.Text = create_table_string("poll_board");


        }


        string create_row(string link, string title, string board, DateTime date) {



            string row_string = @"<tr> <th scope=""row"">" + board + "</th> <td>" + title + "</td> <td>" + Convert.ToString(date) + "</td> </tr>";
            //creates a row of a bootstrap table in html

            return row_string;


        }

        string create_table_string(string board) {
            string title;
            string table_string = @"<table class=""table"" id= """ + board + @"""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
           
            for (int i = 0; i < 500; i++)
           {
                title = "this is post " + Convert.ToString(i);
               table_string = table_string + create_row("nothing", title, "Poll", DateTime.Now );
                
            }
            //combines rows of html table and spits out a whole table!

            table_string = table_string +  "</tbody></table>";
            return table_string;

        }












    }
}