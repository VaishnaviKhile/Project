using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApi.Controllers
{
    public class GetDataController : ApiController
    {
        [HttpGet] 
        public int GetData() {
            int a = 10;
            return a;
        }
        [HttpGet]
        public string GetString()
        {
            string hell = "hii";
            return hell;
        }
    }
}
