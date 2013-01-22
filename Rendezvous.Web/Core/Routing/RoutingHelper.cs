using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace Rendezvous.Web.Core.Routing
{
    public class RoutingHelper
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RoutingHelper"/> class.
        /// </summary>
        public RoutingHelper()
        {
        }

        /// <summary>
        /// Gets the base URL.
        /// </summary>
        /// <value>The base URL.</value>
        public string BaseUrl
        {
            //get { return RequestContext.HttpContext.Request.Url.GetLeftPart(UriPartial.Authority) + VirtualPathUtility.ToAbsolute("~/"); }
            get { return "http://localhost:49573/"; }
        }
    }
}
