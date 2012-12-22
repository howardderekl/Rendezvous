using System.Collections.Generic;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Core.Object
{
    public class ProjectTypeList
    {
        public string ShortName { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public IEnumerable<Project> ProjectList { get; set; }
    }
}
