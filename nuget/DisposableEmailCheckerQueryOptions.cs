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
        /// The email address to check (e.g., support@myspace.com)
        /// </summary>
        [JsonProperty("email")]
        public string Email { get; set; }
    }
}
