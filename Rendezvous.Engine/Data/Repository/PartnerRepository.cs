using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class PartnerRepository : RepositoryBase<Partner, int>
    {
        public static IEnumerable<Partner> GetPartnerList()
        {
            return Db.Partners.OrderBy(p => p.PartnerType.Title).ThenBy(p => p.Name);
        }
    }
}
