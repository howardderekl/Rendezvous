using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web.Testimonials
{
    public partial class TestimonialCntrl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rlvTestimonial_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvTestimonial.DataSource = ShowAll ? TestimonialRepository.GetAllActiveTestimonials() : TestimonialRepository.GetTestimonialByProjectKey(RequestedProjectKey);
        }
        
        public bool ShowAll { get; set; }

        public int RequestedProjectKey {
            get
            {
                //Get this.Page Cast to an IPageWithId
                var thisPage = (IPageWithId) this.Page;
                //Grab the UrlId from that object
                return thisPage.UrlId;
            }
        }
    }
}