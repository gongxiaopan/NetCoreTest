using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCore.Data;

namespace NetCoreTest.Areas.Admin.Controllers
{
    public class SysController : Controller
    {
        private NetCoreContext _context;

        public SysController(NetCoreContext context)
        {
            _context = context;
        }

        [Area("Admin")]
        public IActionResult Index()
        {
            var model = _context.Customers.FirstOrDefault();
            return View(model);
        }
    }
}
