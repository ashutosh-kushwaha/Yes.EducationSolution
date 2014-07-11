using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Unity.Mvc4;
using System.Web.Http;
using Yes.DataAdaptder;
using Yes.Service;
namespace YES.Web
{
  public static class Bootstrapper
  {
    public static IUnityContainer Initialise()
    {
      var container = BuildUnityContainer();

      DependencyResolver.SetResolver(new UnityDependencyResolver(container));
      // register dependency resolver for WebAPI RC
      GlobalConfiguration.Configuration.DependencyResolver = new Unity.WebApi.UnityDependencyResolver(container);
      // if you still use the beta version - change above line to:
      //GlobalConfiguration.Configuration.ServiceResolver.SetResolver(new Unity.WebApi.UnityDependencyResolver(container));
      return container;
    }

    private static IUnityContainer BuildUnityContainer()
    {
      var container = new UnityContainer();

      // register all your components with the container here
      // it is NOT necessary to register your controllers

      // e.g. container.RegisterType<ITestService, TestService>();    
      RegisterTypes(container);

      return container;
    }

    public static void RegisterTypes(IUnityContainer container)
    {
        container.RegisterType<ILoginService, LoginService>();
        container.RegisterType<IDaoLogin, DaoLogin>();

        container.RegisterType<IEmployeeService, EmployeeService>();
        container.RegisterType<IDaoEmployee, DaoEmployee>();
    }
  }
}