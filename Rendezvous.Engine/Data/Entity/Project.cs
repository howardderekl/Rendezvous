using System.Collections.Generic;
using Rendezvous.Engine.Data.Repository;

namespace Rendezvous.Engine.Data.Entity
{
    public partial class Project : IProject
    {
        private string _mDefaultImagePath = "";
        public string DefaultImagePath 
        {
            get
            {
                if(_mDefaultImagePath == "")
                    _mDefaultImagePath = ProjectImageRepository.GetDefaultProjectImage(ProjectKey);

                return _mDefaultImagePath;
            }
            set { _mDefaultImagePath = value; }
        }

        public IEnumerable<ProjectImage> NonDefaultImagePaths
        {
            get { return ProjectImageRepository.GetNonDefaultProjectImages(ProjectKey); }
        }
    }
}
