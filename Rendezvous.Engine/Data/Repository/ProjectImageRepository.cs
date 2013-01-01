using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class ProjectImageRepository : RepositoryBase<ProjectImage, int>
    {
        public static string GetDefaultProjectImage(int prjKey)
        {
            var retImgURl = "";
            //get the default one,
            var dfltImg = Db.ProjectImages.SingleOrDefault(pi => pi.ProjectKey == prjKey && pi.DefaultImage) ??
                          Db.ProjectImages.FirstOrDefault(pi => pi.ProjectKey == prjKey);

            if (dfltImg != null)
                retImgURl = dfltImg.ImagePath;

            return retImgURl;
        }

        public static IEnumerable<ProjectImage> GetNonDefaultProjectImages(int prjKey)
        {
            return Db.ProjectImages.Where(i => i.ProjectKey == prjKey && !i.DefaultImage)
                     .OrderBy(i => i.SortOrder);
        }
    }
}
