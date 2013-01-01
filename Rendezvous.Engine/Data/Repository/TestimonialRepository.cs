using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class TestimonialRepository : RepositoryBase<Testimonial, int>
    {
        public static IEnumerable<Testimonial> GetAllActiveTestimonials()
        {
            return Db.Testimonials.OrderByDescending(t => t.CreateDate);
        }

        public static Testimonial GetTestimonialByProjectKey(int prjKey)
        {
            return Db.Testimonials.FirstOrDefault(t => t.ProjectKey == prjKey);
        }
    }
}
