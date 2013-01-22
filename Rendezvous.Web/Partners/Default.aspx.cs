using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web.Partners
{
    public partial class Default : PreLoginBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rlvPartnerTypesList_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvPartnerTypesList.DataSource = PartnerTypeRepository.GetPartnerTypes();
        }

        protected void rlvPartnerList_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvPartnerList.DataSource = PartnerTypeRepository.GetNestedPartnersByType();
        }

        
        
    }
}