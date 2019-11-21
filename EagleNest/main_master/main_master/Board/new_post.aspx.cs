using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Board
{
    public partial class new_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            test111.InnerText = Session["title"].ToString();
            

        }
    }
}