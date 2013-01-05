using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rendezvous.Engine.Data.Entity
{
    public partial class ProjectType
    {
        public string BriefDescription {
            get
            {
                var totLen = Description.Length;
                return Description.Substring(0, totLen > 75 ? 75 : totLen) + "...";
            }
        }
    }
}
