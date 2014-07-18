using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
namespace Yes.DataAdaptder
{
   public class DaoStateDistrict:IDaoStateDistrict
    {
        /// <summary>
        /// Get the list of all states from DB
        /// </summary>
        /// <returns>List of states in key value pair collection</returns>
       public IEnumerable<KeyValuePair<int, string>> GetStatesList()
        {
            try
            {
                using (YesEntities context=new YesEntities() )
                {
                    var stateList = context.YesStates.ToDictionary(c => c.StateID,s=>s.StateName).ToList();
                    return stateList;
                }

            }
            catch (Exception ex)
            {
                throw;
            }
        }

       /// <summary>
       /// Get the list of all district for input stateID from DB
       /// </summary>
       /// <param name="StateID">ID of state for which you want to get the list of district</param>
       /// <returns>List of district in key value pair collection</returns>
        public IEnumerable<KeyValuePair<int, string>> GetDistrictList(int StateID)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var districtList = context.YesDistricts.Where(c => c.StateID == StateID).ToDictionary(c => c.DistrictID, s => s.DisctrictName).ToList();
                    return districtList;
                }

            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
