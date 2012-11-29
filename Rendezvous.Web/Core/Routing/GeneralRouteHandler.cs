using System.Web;
using System.Web.Compilation;
using System.Web.Routing;
using System.Web.UI;

namespace Rendezvous.Web.Core.Routing
{
	public class GeneralRouteHandler : IRouteHandler
	{
		string _virtualPath;
		public GeneralRouteHandler(string virtualPath)
		{
			_virtualPath = virtualPath;
		}

		public IHttpHandler GetHttpHandler(RequestContext requestContext)
		{
			var display = BuildManager.CreateInstanceFromVirtualPath(
							_virtualPath, typeof(Page)) as Page;
			return display;
		}
	}
}