using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using cybertech.Models;

namespace cybertech.Controllers
{
    public class CompAssecsController : Controller
    {
         CyberTechModel db = new CyberTechModel();

        // GET: CompAssecs
        public async Task<ActionResult> Index()
        {
            return View(await db.CompAssecs.ToListAsync());
        }

        // GET: CompAssecs/
        public ActionResult Browse(int id = 100)
        {
            CompAssec assecModel = db.CompAssecs.Include("Products").Single(c => c.AssecID == id);

            return View(assecModel);
        }

        // GET: /CompAssec/Desc/100

        public ActionResult Description(int id = 100)
        {
            Product product = db.Products.Find(id);

            return View(product);
        }


        // GET: CompAssecs/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CompAssec compAssec = await db.CompAssecs.FindAsync(id);
            if (compAssec == null)
            {
                return HttpNotFound();
            }
            return View(compAssec);
        }

        // GET: CompAssecs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CompAssecs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "AssecID,AssecName")] CompAssec compAssec)
        {
            if (ModelState.IsValid)
            {
                db.CompAssecs.Add(compAssec);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(compAssec);
        }

        // GET: CompAssecs/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CompAssec compAssec = await db.CompAssecs.FindAsync(id);
            if (compAssec == null)
            {
                return HttpNotFound();
            }
            return View(compAssec);
        }

        // POST: CompAssecs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "AssecID,AssecName")] CompAssec compAssec)
        {
            if (ModelState.IsValid)
            {
                db.Entry(compAssec).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(compAssec);
        }

        // GET: CompAssecs/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CompAssec compAssec = await db.CompAssecs.FindAsync(id);
            if (compAssec == null)
            {
                return HttpNotFound();
            }
            return View(compAssec);
        }

        // POST: CompAssecs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            CompAssec compAssec = await db.CompAssecs.FindAsync(id);
            db.CompAssecs.Remove(compAssec);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
