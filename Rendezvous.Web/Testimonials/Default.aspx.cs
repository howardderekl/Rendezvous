﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;

namespace Rendezvous.Web.Testimonials
{
    public partial class Default : PreLoginBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rlvTestimonial_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvTestimonial.DataSource = TestimonialRepository.GetAllActiveTestimonials();
        }
    }
}