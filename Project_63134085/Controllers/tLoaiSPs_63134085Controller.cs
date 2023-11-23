using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Project_63134085.Models;

namespace Project_63134085.Controllers
{
    public class tLoaiSPs_63134085Controller : Controller
    {
        private Project_63134085Entities1 db = new Project_63134085Entities1();

        // GET: tLoaiSPs_63134085
        public ActionResult Index()
        {
            return View(db.tLoaiSPs.ToList());
        }

        // GET: tLoaiSPs_63134085/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tLoaiSP tLoaiSP = db.tLoaiSPs.Find(id);
            if (tLoaiSP == null)
            {
                return HttpNotFound();
            }
            return View(tLoaiSP);
        }

        // GET: tLoaiSPs_63134085/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tLoaiSPs_63134085/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaLoai,Loai")] tLoaiSP tLoaiSP)
        {
            if (ModelState.IsValid)
            {
                db.tLoaiSPs.Add(tLoaiSP);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tLoaiSP);
        }

        // GET: tLoaiSPs_63134085/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tLoaiSP tLoaiSP = db.tLoaiSPs.Find(id);
            if (tLoaiSP == null)
            {
                return HttpNotFound();
            }
            return View(tLoaiSP);
        }

        // POST: tLoaiSPs_63134085/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaLoai,Loai")] tLoaiSP tLoaiSP)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tLoaiSP).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tLoaiSP);
        }

        // GET: tLoaiSPs_63134085/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tLoaiSP tLoaiSP = db.tLoaiSPs.Find(id);
            if (tLoaiSP == null)
            {
                return HttpNotFound();
            }
            return View(tLoaiSP);
        }

        // POST: tLoaiSPs_63134085/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            tLoaiSP tLoaiSP = db.tLoaiSPs.Find(id);
            db.tLoaiSPs.Remove(tLoaiSP);
            db.SaveChanges();
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
		[ChildActionOnly]
		public ActionResult RenderMenu()
		{
            var loaisp=db.tLoaiSPs.ToList();
            ViewBag.Loai= loaisp;
			return PartialView("_MenuBar");
		}
	}
}
