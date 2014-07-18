using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.DataAdaptder;

namespace Yes.Service
{
    public class StateDistrictService:IStateDistrictService
    {
        [Dependency]
        public IDaoStateDistrict _stateDistrictDataAdapter { get; set; }

        /// <summary>
        /// Get the list of all states from data access layer
        /// </summary>
        /// <returns>List of states in key value pair collection</returns>
        public IEnumerable<KeyValuePair<int, string>> GetStatesList()
        {
            return _stateDistrictDataAdapter.GetStatesList();
        }

        /// <summary>
        /// Get the list of all district for input stateID from data access layer
        /// </summary>
        /// <param name="StateID">ID of state for which you want to get the list of district</param>
        /// <returns>List of district in key value pair collection</returns>
        public IEnumerable<KeyValuePair<int, string>> GetDistrictList(int StateID)
        {
            return _stateDistrictDataAdapter.GetDistrictList(StateID);
        }
    }
}
