using System;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;

namespace Rendezvous.Web
{
	public partial class Default : PreLoginBasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		    if (!IsPostBack)
		    {
		        BindSlider();
		    }
		}

        private void BindSlider()
        {
            repFlexSlider.DataSource = ProjectRepository.GetProjectAsSlides(3);
        }
	}
}