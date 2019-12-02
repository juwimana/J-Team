using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace main_master.Moderation
{
    public class Report
    {
        public Guid id;
        public Guid post_id;
        public int post_type;
        public string post_type_str;
        public Guid reporter_id;
        public string reporter_name;
        public DateTime date;
        public string comment;
        public int status;
        public string link;
    }
}