using System;
using System.Web.Routing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using main_master.sql;
using System.Web.UI;

namespace main_master
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            SqlUtil.init();

            string jqueryVersion = "3.4.1";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-" + jqueryVersion + ".js",
                CdnPath = "https://cdnjs.cloudflare.com/ajax/libs/jquery/" + jqueryVersion + "/jquery.min.js",
                CdnDebugPath = "https://cdnjs.cloudflare.com/ajax/libs/jquery/" + jqueryVersion + "/jquery.js"
            });
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
            SqlUtil.destroy();
        }
    }
}