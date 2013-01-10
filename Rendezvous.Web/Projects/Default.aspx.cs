using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Engine.Data.Repository;
using Rendezvous.Web.Core;

namespace Rendezvous.Web.Projects
{
    public partial class Default : PreLoginBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void rlvProjectTypeList_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            if (ProjectTypeKey == 0)
                rlvProjectTypeList.DataSource = ProjectRepository.GetActiveProjects();
            else
                rlvProjectTypeList.DataSource = ProjectRepository.GetProjectsByProjectType(ProjectTypeKey);
        }

        protected void rlvProjectTypeNav_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            rlvProjectTypeNav.DataSource = ProjectTypeRepository.GetActiveProjectTypes();
        }

        public int ProjectTypeKey
        {
            get
            {
                int projectTypeKey = 0;
                if (Request["id"] != null && int.TryParse(Request["id"], out projectTypeKey))
                    return projectTypeKey;
                else
                    return projectTypeKey;

            }
        }

        protected void rlvProjectTypeDetl_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            if (ProjectTypeKey != 0)
            {
                rlvProjectTypeDetl.DataSource = ProjectTypeRepository.GetProjectTypesByKey(ProjectTypeKey);
            }
            else
            {
                rlvProjectTypeDetl.Visible = false;
            }
        }
    }
}