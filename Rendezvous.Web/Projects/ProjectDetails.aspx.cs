using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web.Projects
{
    public partial class ProjectDetails : PreLoginBasePage, IPageWithId
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();

            if (!IsPostBack)
            {
                if (CurrentProjectKey != 0)
                {
                    BindProjectInformation(CurrentProjectKey);
                }
                else
                {
                    DisplayInvalidProjectKey();
                }
            }

            
        }

        private void DisplayInvalidProjectKey()
        {
            
        }

        private void BindProjectInformation(int projectKey)
        {
            var reqPrj = ProjectRepository.GetByID(projectKey);

            if (reqPrj != null)
            {
                if (reqPrj.DefaultImagePath != "")
                    imgDefaultPrjImg.ImageUrl = reqPrj.DefaultImagePath;

                lblProjectTitle.Text = reqPrj.Title;

                litProjectDesc.Text = reqPrj.Description;

                BindImageSlider(reqPrj.NonDefaultImagePaths);

            }
            else
            {
                DisplayInvalidProjectKey();
            }
        }

        private void BindImageSlider(IEnumerable<ProjectImage> imgPaths)
        {
            rlvSlider.DataSource = imgPaths;
            rlvSlider.DataBind();
            rlvCarousel.DataSource = imgPaths;
            rlvCarousel.DataBind();
        }

        public int CurrentProjectKey {
            get { return UrlId; }
        }
        public int UrlId { get; set;}
    }
}