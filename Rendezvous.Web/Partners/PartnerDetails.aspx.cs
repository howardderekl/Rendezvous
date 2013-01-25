using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Web.Core;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web.Partners
{
    public partial class PartnerDetails : PreLoginBasePage, IPageWithId
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int CurrentPartnerKey {
            get { return UrlId; }
        }

        public int UrlId { get; set; }
    }
}