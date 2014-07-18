using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Yes.Service;

namespace YES.Web.Controllers
{
    [AttributeRouting.RoutePrefix("api/StateDistrict")]
    public class StateDistrictApiController : ApiController
    {
        [Dependency]
        public IStateDistrictService _stateDistrictService { get; set; }

        [AttributeRouting.Web.Mvc.Route("GetAllStates")]
        public IEnumerable<KeyValuePair<int, string>> GetAllStates()
        {
            return _stateDistrictService.GetStatesList();
        }
    }
}
