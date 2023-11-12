using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIpractice.Controllers
{
    public class practiceController : ApiController
    {
        [HttpGet]
        public int getValue() 
        {
            return 10;
        }

        [HttpGet]
        public string getString ()
        {
            return "hi";
        }
    }
}
