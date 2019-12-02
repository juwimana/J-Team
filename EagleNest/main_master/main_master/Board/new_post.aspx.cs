using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using main_master.sql;

namespace main_master.Board
{
    public partial class new_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            require_login();
            new_post_title.Text = Session["title"].ToString();
           new_post_description.Text = Session["description"].ToString();
            if ((Session["image"].ToString().Length>0)) {
                new_post_image_label.Text = "Image";
               
                Byte[] bytes = (Byte[])Session["image_array"];
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);
                new_post_image.ImageUrl = "data:image/png;base64," + str;
            
            }
            if (Session["options"] != null) {
                build_poll_radios();
            
            }

            
        }


        protected void new_post_submit_click(object sender, EventArgs e) {

            int board = (int)Session["board"];



            

            List<SqlParameter> parameters = new List<SqlParameter>();

            Guid g = Guid.NewGuid();



            parameters.Add(new SqlParameter("@BpostID", g));
            parameters.Add(new SqlParameter("@ID_Num", Session["uid"]));
            parameters.Add(new SqlParameter("@Title", new_post_title.Text));
            parameters.Add(new SqlParameter("@Description", new_post_description.Text));
            parameters.Add(new SqlParameter("@Board", board));
            parameters.Add(new SqlParameter("@Date", DateTime.Now));
            parameters.Add(new SqlParameter("@Expiration", DateTime.MaxValue));
            //parameters.Add(new SqlParameter("@Tags", null));
            parameters.Add(new SqlParameter("@Attachments", (Byte[])Session["image_array"]));
            int reader = SqlUtil.ExecuteNonQuery("insert into board_post values (@BpostID,@ID_Num,@Title,@Description,@Board,@Date,@Expiration,null,@Attachments,default)", parameters);

            if (board == 2) {
                List<string> options = (List<string>)Session["options"];



                foreach (string o in options) {
                    if (o != "") { 
                    parameters.Clear();
                    parameters.Add(new SqlParameter("@Text", o));
                    parameters.Add(new SqlParameter("@BpostID", g));
                    parameters.Add(new SqlParameter("@option_id", Guid.NewGuid()));
                    SqlUtil.ExecuteNonQuery(("insert into [poll_options] values (@option_id, @BpostID, @Text)"), parameters);
                    }
                }
            
            
            
            
            
            
            
            
            }



            Session.Add("options", null);
            Session.Add("edit", null);
            Session.Add("title", null);
            Session.Add("description", null);
            Session.Add("image", null);
            Session.Add("last_tab", null);
            Session.Add("last_radio",null);
            string link = "view/" + g;
            Response.Redirect(link);

        }


        protected void new_post_edit_click(object sender, EventArgs e) {

            Session.Add("edit", "edit");
            Response.Redirect("Main.aspx");
        
        }

        protected void build_poll_radios() {

            List<string> option_list = (List<string>)Session["options"];

            if (option_list[0] != "") { option1.Text = option_list[0]; option1.Visible = true; }
            if (option_list[1] != "") { option2.Text = option_list[1]; option2.Visible = true; }
            if (option_list[2] != "") { option3.Text = option_list[2]; option3.Visible = true; }
            if (option_list[3] != "") { option4.Text = option_list[3]; option4.Visible = true; }
            if (option_list[4] != "") { option5.Text = option_list[4]; option5.Visible = true; }
            if (option_list[5] != "") { option6.Text = option_list[5]; option6.Visible = true; }
            if (option_list[6] != "") { option7.Text = option_list[6]; option7.Visible = true; }
            if (option_list[7] != "") { option8.Text = option_list[7]; option8.Visible = true; }
            if (option_list[8] != "") { option9.Text = option_list[8]; option9.Visible = true; }
            if (option_list[9] != "") { option10.Text = option_list[9]; option10.Visible = true; }








        }
        protected void require_login()
        {

            if (Session["uid"] == null)
            {
                Response.Redirect("/login.aspx");

            }

        }





    }
}
