using System;
using System.Web;

namespace Rendezvous.Web.Core.Routing
{
	public interface IPageWithId : IHttpHandler
	{
		int UrlId { get; set; }
	}
}