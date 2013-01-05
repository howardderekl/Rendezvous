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
            repFlexSlider.DataSource = ProjectRepository.GetProjectAsSlides(4);
            repFlexSlider.DataBind();
        }

        protected void rlvProjetTypeList_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvProjetTypeList.DataSource = ProjectTypeRepository.GetActiveProjects();
        }
	}
}