using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web.Core
{
	public class BaseMasterPage : System.Web.UI.MasterPage
	{
        public RoutingHelper Routing { get; set; }

		public BaseMasterPage()
		{
			Routing = new RoutingHelper();
		}
	}
}