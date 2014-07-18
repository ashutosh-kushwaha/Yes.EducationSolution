using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.DataAdaptder
{
    public interface IDaoStateDistrict
    {
        IEnumerable<KeyValuePair<int, string>> GetStatesList();
        IEnumerable<KeyValuePair<int, string>> GetDistrictList(int StateID);
    }
}
