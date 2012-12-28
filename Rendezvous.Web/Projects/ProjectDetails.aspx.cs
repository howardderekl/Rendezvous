using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Rendezvous.Web.Core;

namespace Rendezvous.Web.Projects
{
    public partial class ProjectDetails : PreLoginBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (ID != 0)
                {
                    BindProjectInformation(ID);
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
            
        }

        public int ID {
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