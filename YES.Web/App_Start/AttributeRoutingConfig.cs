using System.Web.Routing;
using AttributeRouting.Web.Mvc;
using System.Reflection;

[assembly: WebActivator.PreApplicationStartMethod(typeof(YES.Web.AttributeRoutingConfig), "Start")]

namespace YES.Web 
{
	public static class AttributeRoutingConfig
	{
		public static void RegisterRoutes(RouteCollection routes)
		{
			// See http://github.com/mccalltd/AttributeRouting/wiki for more options.
			// To debug routes locally using the built in ASP.NET development server, go to /routes.axd

			//routes.MapAttributeRoutes();
			RouteTable.Routes.MapAttributeRoutes(cfg =>
			{
				cfg.AddRoutesFromAssembly(Assembly.GetExecutingAssembly());
				cfg.InheritActionsFromBaseController = true;
				// Specify other configuration options here.
			});
		}

		public static void Start()
		{
			RegisterRoutes(RouteTable.Routes);
		}
	}
}
