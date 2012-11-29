using System;
using System.Web.Security;

namespace Rendezvous.Web.Core
{
	public class LoggedInBasePage : BasePage
	{
		protected override void OnLoad(EventArgs e)
		{

			if (User.Identity.IsAuthenticated == false)
			{
				FormsAuthentication.RedirectToLoginPage(Request.QueryString.ToString());
				Response.End();
			}
			else
				base.OnLoad(e);
		}
	}
}