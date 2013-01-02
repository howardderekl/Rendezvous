using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;

namespace Rendezvous.Web.Projects
{
    public partial class ProjectDetails : PreLoginBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (reqID != 0)
                {
                    BindProjectInformation(reqID);
                }
                else
                {
                    DisplayInvalidProjectKey();
                }
            }
        }

        private void DisplayInvalidProjectKey()
        {
            throw new NotImplementedException();
        }

        private void BindProjectInformation(int projectKey)
        {
            var reqPrj = ProjectRepository.GetByID(projectKey);
            TestimonialCntrl.Attributes["ProjectKey"] = projectKey.ToString();

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

        public int reqID {
            get
            {
                if (Request["id"] == null)
                    return 0;
                else
                {
                    int valInt;
                    if (int.TryParse(Request["id"], out valInt))
                        return valInt;
                    else
                    {
                        return 0;
                    }
                }
                
            }
        }
    }
}