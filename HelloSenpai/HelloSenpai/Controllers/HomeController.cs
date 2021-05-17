using HelloSenpai.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace HelloSenpai.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly HelloSenpaiDBContext _context;

        public HomeController(ILogger<HomeController> logger, HelloSenpaiDBContext context)

        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public IActionResult Test()
        {
            return View();
        }
        public IActionResult newsfeed()
        {
            var test = new List<Student>();
            test = _context.Students.ToList<Student>();
            ViewBag.Users = test;
            return View();
            
        }
        public IActionResult learn()
        {
            return View();
        }
        public IActionResult lessons()
        {
            var test = new List<Subject>();
            test = _context.Subjects.ToList<Subject>();
            ViewBag.Users = test;
            return View();
        }
    }
}
