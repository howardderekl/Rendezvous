using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Compilation;
using System.Web.Routing;
using System.Web.UI;

namespace Rendezvous.Web.Core.Routing
{
	public class SingleIdRouteHandler : IRouteHandler
	{
		private readonly string _virtualPath;

		public SingleIdRouteHandler(string virtualPath)
		{
			_virtualPath = virtualPath;
		}

		public IHttpHandler GetHttpHandler(RequestContext requestContext)
		{
			var display = BuildManager.CreateInstanceFromVirtualPath(
							_virtualPath, typeof(Page)) as IPageWithId;

			display.UrlId = int.Parse(requestContext.RouteData.Values["id"].ToString());
			return display;
		}
	}
}