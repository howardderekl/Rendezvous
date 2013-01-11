

using System.Collections.Generic;
using System.Linq;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class PartnerTypeRepository : RepositoryBase<PartnerType, int>
    {
        public static IEnumerable<PartnerType> GetPartnerTypes()
        {
            return Db.PartnerTypes.OrderBy(pt => pt.Title);
        }
    }
}
