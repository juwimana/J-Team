using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace main_master
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("ViewUser", "Blog/User/{UserId}", "~/Blog/User.aspx");
            routes.MapPageRoute("ViewPost", "Blog/View/{PostId}", "~/Blog/View.aspx");
            routes.MapPageRoute("ViewBoardPost", "Board/View/{BpostID}", "~/Board/View.aspx");
            routes.MapPageRoute("EditPost", "Blog/Edit/{PostId}", "~/Blog/Edit.aspx");
            routes.MapPageRoute("Report", "Report/{PostId}", "~/Report.aspx");
            routes.MapPageRoute("Status", "Status/{ModeratinId}", "~/Moderation/Status.aspx");
        }
    }
}
