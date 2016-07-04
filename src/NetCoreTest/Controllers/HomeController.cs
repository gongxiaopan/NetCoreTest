using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCore.Data;

namespace NetCoreTest.Controllers
{
    public class HomeController : Controller
    {
        private NetCoreContext _context;

        public HomeController(NetCoreContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var customer = _context.Customers.FirstOrDefault();
            return View(customer);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
