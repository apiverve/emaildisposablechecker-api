using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DisposableEmailChecker
{
    /// <summary>
    /// Query options for the Disposable Email Checker API
    /// </summary>
    public class DisposableEmailCheckerQueryOptions
    {
        /// <summary>
        /// The email address to check (e.g., support@myspace.com). Send this or domain
        /// </summary>
        [JsonProperty("email")]
        public string Email { get; set; }

        /// <summary>
        /// A domain to check instead of a full address (e.g., mailinator.com). Send this or email
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
