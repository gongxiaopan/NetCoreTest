using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCore.Data;
using Microsoft.Extensions.Caching.Memory;

namespace NetCoreTest.Areas.Admin.Controllers
{
    public class SysController : Controller
    {
        private NetCoreContext _context;
        private IMemoryCache _memoryCache;
        private string cachekey = "statistics";

        public SysController(NetCoreContext context, IMemoryCache memoryCache)
        {
            _context = context;
            _memoryCache = memoryCache;
        }

        [Area("Admin")]
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
    }
}
