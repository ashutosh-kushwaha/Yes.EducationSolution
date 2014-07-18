using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Yes.Service
{
    public interface IStateDistrictService
    {
        IEnumerable<KeyValuePair<int, string>> GetStatesList();
        IEnumerable<KeyValuePair<int, string>> GetDistrictList(int StateID);
    }
}
