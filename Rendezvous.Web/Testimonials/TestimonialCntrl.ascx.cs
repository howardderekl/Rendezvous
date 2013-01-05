using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Repository;

namespace Rendezvous.Web.Testimonials
{
    public partial class TestimonialCntrl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rlvTestimonial_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvTestimonial.DataSource = ShowAll ? TestimonialRepository.GetAllActiveTestimonials() : TestimonialRepository.GetTestimonialByProjectKey(ProjectKey);
        }

        private int _ProjectKey = 0;
        public int ProjectKey {
            get
            {
                if(_ProjectKey == 0)
                    _ProjectKey = Request["id"] == "" ? 0 : int.Parse(Request["id"]);

                return _ProjectKey;
            }
            set { _ProjectKey = value; }
        }
        public bool ShowAll { get; set; }
    }
}