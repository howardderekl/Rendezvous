using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rendezvous.Engine.Core.Object;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class ProjectTypeRepository : RepositoryBase<ProjectType, int>
    {
        public static IEnumerable<ProjectTypeList> GetProjectsByType()
        {
            return from pt in Db.ProjectTypes
                   join p in Db.Projects on pt.ProjectTypeKey equals p.ProjectTypeKey
                   where p.Active
                   orderby p.CompletionDate descending 
                   group new {pt, p} by new {pt.ProjectTypeKey, pt.ID, pt.Title, pt.Description}
                   into pGrp
                   select new ProjectTypeList
                       {
                           ShortName = pGrp.Key.ID,
                           Title = pGrp.Key.Title,
                           Description = pGrp.Key.Description,
                           ProjectList = pGrp.Select(g => g.p)
                       };
        }
    }
}
