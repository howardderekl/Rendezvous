using System;
using System.Web;

namespace Rendezvous.Web.Core.Routing
{
	public class IPageWithId : IHttpHandler
	{
		public int UrlId { get; set; }

		public bool IsReusable
		{
			get { throw new NotImplementedException(); }
		}

		public void ProcessRequest(HttpContext context)
		{
			throw new NotImplementedException();
		}
	}
}