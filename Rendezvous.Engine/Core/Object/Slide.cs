using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rendezvous.Engine.Core.Object
{
    public class Slide
    {
        public string FigureUrl { get; set; }
        public string FigureImgUrl { get; set; }
        public string SlideCaption { get; set; }
        public string SlideDescription { get; set; }
        public string ReadMoreUrl { get; set; }
        public bool HasReadMore { get; set; }
    }
}
