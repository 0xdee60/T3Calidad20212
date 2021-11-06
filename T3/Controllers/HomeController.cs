using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using T3.Models;
using T3.Models.Context;

namespace T3.Controllers
{
    public class HomeController : Controller
    {
        public NotasContext cnx;
        public readonly IConfiguration configuration;
        
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger,IConfiguration configuration, NotasContext cnx)
        {
            _logger = logger;
            this.configuration = configuration;
            this.cnx = cnx;
        }

        

        

        public IActionResult Index()
        {
            var Notas = cnx.Notas.ToList();
       
            ViewBag.Notas = Notas; 
            return View();
        }
        
        public ActionResult Details(int idNota)
        {
            var nota = cnx.Notas.Where(o => o.idNota == idNota).FirstOrDefault();
        
            ViewBag.Nota = nota; 
            
            return View();
        }
        
        [HttpGet]
        public ActionResult Create()
        {
            
            return View();
        }
        [HttpPost]
        public ActionResult Create(string titulo, string contenido)
        {
            Nota nota = new Nota();
            nota.contenido = contenido;
            nota.titulo = titulo;

            cnx.Notas.Add(nota);
            cnx.SaveChanges();
            
            return RedirectToAction("Index","Home");
        }
        [HttpGet]
        public ActionResult Edit(int idNota)
        {
            var nota = cnx.Notas.Where(o => o.idNota == idNota).FirstOrDefault();
            ViewBag.IdNota = nota.idNota;
            ViewBag.Nota = nota;
            return View();
        }
        [HttpPost]
        public ActionResult Edit(int idNota,string titulo, string contenido)
        {
            var nota = cnx.Notas.Where(o => o.idNota == idNota).FirstOrDefault();
            nota.contenido = contenido;
            nota.titulo = titulo;

            cnx.Notas.Update(nota);
            cnx.SaveChanges();
            
            return RedirectToAction("Index","Home");
        }
        
        [HttpPost]
        public async Task<ActionResult> Delete(int idNota)
        {
            var nota = cnx.Notas.Where(o=>o.idNota == idNota).FirstOrDefault();

            cnx.Remove(nota);
            cnx.SaveChanges();
            return RedirectToAction("Index", "Home");
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel {RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier});
        }
    }
}