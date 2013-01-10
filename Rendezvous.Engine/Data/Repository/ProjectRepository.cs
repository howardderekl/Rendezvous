﻿using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Rendezvous.Engine.Core.Object;
using Rendezvous.Engine.Data.Entity;

namespace Rendezvous.Engine.Data.Repository
{
    public class  ProjectRepository : RepositoryBase<Project, int>
    {
        public static IEnumerable<Slide> GetProjectAsSlides(int numSlides)
        {
            var projects = from prj in Db.Projects
                   where prj.Active
                   select new Slide()
                   {
                       FigureUrl = "~/Projects/ProjectDetails.aspx?id=" + prj.ProjectKey,
                       SlideCaption = prj.Title,
                       FigureImgUrl = prj.ProjectImages
                                         .FirstOrDefault(i => i.DefaultImage || i.SortOrder == 0)
                                         .ImagePath ?? "",
                       SlideDescription = prj.Description,
                       HasReadMore = true,
                       ReadMoreUrl = "~/Projects/ProjectDetails.aspx?id=" + prj.ProjectKey
                   };

            return projects;
        }


        public static IEnumerable<Project> GetProjectsByProjectType(int typeKey)
        {
            return from prj in Db.Projects
                   where prj.ProjectTypeKey == typeKey
                   orderby prj.CompletionDate descending 
                   select prj;
        }

        public static IEnumerable<Project> GetActiveProjects()
        {
            return Db.Projects.Where(p => p.Active).OrderByDescending(p => p.CompletionDate);
        }
    }
}
