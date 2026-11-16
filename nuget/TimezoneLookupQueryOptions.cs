using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TimezoneLookup
{
    /// <summary>
    /// Query options for the Timezone Lookup API
    /// </summary>
    public class TimezoneLookupQueryOptions
    {
        /// <summary>
        /// The city name for which you want to get the data (e.g., Harare). A name shared by several places resolves to the best-known one (London is London, UK); add a state, province or country after a comma to pick another (e.g., Portland, Maine or London, Ontario)
        /// </summary>
        [JsonProperty("city")]
        public string City { get; set; }
    }
}
