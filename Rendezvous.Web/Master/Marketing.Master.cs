using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Web.Core;

namespace Rendezvous.Web.Master
{
    public partial class Marketing : BaseMasterPage
    {
		public bool UserLoggedIn { get{ return HttpContext.Current.User.Identity.IsAuthenticated;} }

        protected void Page_Load(object sender, EventArgs e)
        {
			
        }
    }
}