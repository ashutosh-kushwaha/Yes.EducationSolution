using System.Web.Http;
using AttributeRouting.Web.Http.WebHost;
using System.Reflection;

[assembly: WebActivator.PreApplicationStartMethod(typeof(YES.Web.AttributeRoutingHttpConfig), "Start")]

namespace YES.Web
{
	public static class AttributeRoutingHttpConfig
	{
		public static void RegisterRoutes(HttpRouteCollection routes)
		{
			// See http://github.com/mccalltd/AttributeRouting/wiki for more options.
			// To debug routes locally using the built in ASP.NET development server, go to /routes.axd

			//routes.MapHttpAttributeRoutes();
			GlobalConfiguration.Configuration.Routes.MapHttpAttributeRoutes(cfg =>
			{
				cfg.AddRoutesFromAssembly(Assembly.GetExecutingAssembly());
				cfg.InheritActionsFromBaseController = true;
				// Specify other configuration options here.
			});
		}

		public static void Start()
		{
			RegisterRoutes(GlobalConfiguration.Configuration.Routes);
		}
	}
}
