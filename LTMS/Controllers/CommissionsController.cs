using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LTMS.Models.Lotteries;

namespace LTMS.Controllers
{
    public class CommissionsController : Controller
    {
        private LottieModels db = new LottieModels();

        // GET: Commissions
        public ActionResult Index()
        {
            var tblCommissions = db.tblCommissions.Include(t => t.tblShifts);
            return View(tblCommissions.ToList());
        }

        // GET: Commissions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCommission tblCommission = db.tblCommissions.Find(id);
            if (tblCommission == null)
            {
                return HttpNotFound();
            }
            return View(tblCommission);
        }

        // GET: Commissions/Create
        public ActionResult Create()
        {
            ViewBag.ShiftId = new SelectList(db.tblShifts, "ShiftId", "ShiftDescription");
            return View();
        }

        // POST: Commissions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CommId,ShiftId,x2,x3,status,deleted")] tblCommission tblCommission)
        {
            if (ModelState.IsValid)
            {
                db.tblCommissions.Add(tblCommission);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ShiftId = new SelectList(db.tblShifts, "ShiftId", "ShiftDescription", tblCommission.ShiftId);
            return View(tblCommission);
        }

        // GET: Commissions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCommission tblCommission = db.tblCommissions.Find(id);
            if (tblCommission == null)
            {
                return HttpNotFound();
            }
            ViewBag.ShiftId = new SelectList(db.tblShifts, "ShiftId", "ShiftDescription", tblCommission.ShiftId);
            return View(tblCommission);
        }

        // POST: Commissions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CommId,ShiftId,x2,x3,status,deleted")] tblCommission tblCommission)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblCommission).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ShiftId = new SelectList(db.tblShifts, "ShiftId", "ShiftDescription", tblCommission.ShiftId);
            return View(tblCommission);
        }

        // GET: Commissions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCommission tblCommission = db.tblCommissions.Find(id);
            if (tblCommission == null)
            {
                return HttpNotFound();
            }
            return View(tblCommission);
        }

        // POST: Commissions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblCommission tblCommission = db.tblCommissions.Find(id);
            db.tblCommissions.Remove(tblCommission);
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
    }
}
