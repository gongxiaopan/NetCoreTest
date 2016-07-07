using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCore.Data;
using Microsoft.Extensions.Caching.Memory;

namespace NetCoreTest.Controllers
{
    public class HomeController : Controller
    {
        private NetCoreContext _context;
        private IMemoryCache _memoryCache;
        private string cachekey = "statistics";
        public HomeController(NetCoreContext context, IMemoryCache memoryCache)
        {
            _context = context;
            _memoryCache = memoryCache;
        }
        public IActionResult Index()
        {
            var customer = _context.Customers.FirstOrDefault();
            if (!_memoryCache.TryGetValue(cachekey, out customer))
            {
                customer = _context.Customers.FirstOrDefault();
                _memoryCache.Set(cachekey, customer, TimeSpan.FromMinutes(1));
            }
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
