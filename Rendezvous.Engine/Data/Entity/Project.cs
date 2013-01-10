using System.Collections.Generic;
using Rendezvous.Engine.Data.Repository;

namespace Rendezvous.Engine.Data.Entity
{
    public partial class Project : IProject
    {
        public string BriefDescription
        {
            get
            {
                var totLen = Description.Length;
                var bDesc = Description.Substring(0, totLen > 150 ? 150 : totLen);
                return bDesc.Length > 150 ? bDesc  + "..." : bDesc;
            }
        }

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

        public IEnumerable<Testimonial> Testimonial {
            get { return TestimonialRepository.GetTestimonialByProjectKey(ProjectKey); }            
        }
    }
}
