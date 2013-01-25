using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Rendezvous.Web.Core.Routing;

namespace Rendezvous.Web
{
	public class Global : System.Web.HttpApplication
	{

		protected void Application_Start(object sender, EventArgs e)
		{
			RegisterRoutes(RouteTable.Routes);
			ValueProviderFactories.Factories.Add(new JsonValueProviderFactory());
		}

		private static void RegisterRoutes(RouteCollection routes)
		{

			HttpContext.Current.Application["RouteList"] = new List<string>();

            AddGeneralRoute("Home", "", "~/Default.aspx");
            AddGeneralRoute("Splash", "Home", "~/Default.aspx");
            AddGeneralRoute("Gallery", "Gallery", "~/gallery.html");
            AddGeneralRoute("AboutUs", "AboutUs", "~/AboutUs.aspx");
            AddGeneralRoute("ContactUs", "ContactUs", "~/ContactUs.aspx");

            AddGeneralRoute("Projects", "Projects", "~/Projects/Default.aspx");

            AddGeneralRoute("Testimonials", "Testimonials", "~/Testimonials/Default.aspx");

            AddGeneralRoute("OurProcess", "OurProcess", "~/OurProcess/Default.aspx");
            
            AddGeneralRoute("Partners", "Partners", "~/Partners/Default.aspx");
            

            
            AddPageWithIdRoute("ProjectDetails", "Projects/Details/{id}", "~/Projects/ProjectDetails.aspx");
            AddPageWithIdRoute("PartnerDetails", "Partners/Details/{id}", "~/Partners/PartnerDetails.aspx");
            AddPageWithIdRoute("PartnerFiltered", "Partners/{id}", "~/Partners/Default.aspx");

		    
			//AddPageWithIdRoute("EditBatch", "Batches/{id}", "~/BatchPages/EditBatch.aspx");

			
			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
			routes.IgnoreRoute("{resource}.aspx/{*pathInfo}");
            routes.MapRoute("DefaultMVC", // Route name
                    "{controller}/{action}/{id}", // URL with parameters
                    new { controller = "Home", action = "Index", id = "" }// Parameter defaults
            );

		}

		private static void AddPageWithIdRoute(string name, string url, string path)
		{
			((List<string>)HttpContext.Current.Application["RouteList"]).Add(url);

			RouteTable.Routes.Add(
					name,
					new Route(url, new SingleIdRouteHandler(path)));
		}


		private static string StripLeadingSlash(string input)
		{
			if (input.StartsWith("/") && input.Length > 1)
				return input.Substring(1);
			else
				return input;
		}

		private static void AddGeneralRoute(string routeName, string url, string path)
		{
			((List<string>)HttpContext.Current.Application["RouteList"]).Add(url);

			RouteTable.Routes.Add(
					routeName,
					new Route(url, new GeneralRouteHandler(path)));
		}

		
		protected void Session_Start(object sender, EventArgs e)
		{

		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{
			// Code that runs when an unhandled error occurs

			//get reference to the source of the exception chain
			Exception lastError = Server.GetLastError();
			Exception ex;
			if (lastError.InnerException != null)
				ex = lastError.InnerException;
			else
				ex = lastError.GetBaseException();
		}

		protected void Session_End(object sender, EventArgs e)
		{

		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
	}
}