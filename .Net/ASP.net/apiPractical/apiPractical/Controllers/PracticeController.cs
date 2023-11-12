using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace apiPractical.Controllers
{
    public class PracticeController : ApiController
    {
        [HttpGet]
        public string getString()
        {
            // https://localhost:44384/api/Practice/getString
            return "vaishnavi";
        }
        [HttpGet]
        public int getInt()
        {
            //https://localhost:44384/api/Practice/getInt
            return 10;
        }
    }
}
