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
    public class ShiftsController : Controller
    {
        private LottieModels db = new LottieModels();

        // GET: Shifts
        public ActionResult Index()
        {
            return View(db.tblShifts.ToList());
        }

        // GET: Shifts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblShift tblShift = db.tblShifts.Find(id);
            if (tblShift == null)
            {
                return HttpNotFound();
            }
            return View(tblShift);
        }

        // GET: Shifts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Shifts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ShiftId,OpenTime,ClosepenTime")] tblShift tblShift)
        {
            tblShift _tblShift = db.tblShifts.Find(tblShift.ShiftId);
            if (ModelState.IsValid)
            {
                _tblShift.OpenTime = tblShift.OpenTime;
                _tblShift.OpenTime = tblShift.CloseTime;
                db.tblShifts.Add(_tblShift);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblShift);
        }

        // GET: Shifts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblShift tblShift = db.tblShifts.Find(id);
            if (tblShift == null)
            {
                return HttpNotFound();
            }
            return View(tblShift);
        }

        // POST: Shifts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ShiftId,OpenTime,CloseTime")] tblShift tblShift)
        {
            tblShift _tblShift = db.tblShifts.Find(tblShift.ShiftId);
            if (ModelState.IsValid)
            {
                _tblShift.OpenTime = tblShift.OpenTime;
                _tblShift.CloseTime = tblShift.CloseTime;
                db.Entry(_tblShift).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblShift);
        }

        // GET: Shifts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblShift tblShift = db.tblShifts.Find(id);
            if (tblShift == null)
            {
                return HttpNotFound();
            }
            return View(tblShift);
        }

        // POST: Shifts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblShift tblShift = db.tblShifts.Find(id);
            db.tblShifts.Remove(tblShift);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult _editShift(tblShift _m)
        {
            try
            {
                var _Agency = new tblShift();
                var order = db.tblShifts.Where(x => x.ShiftId == _m.ShiftId).FirstOrDefault();
                if (order != null) // update
                {
                    _Agency.ShiftId = _m.ShiftId;
                    _Agency.OpenTime = _m.OpenTime;
                    _Agency.CloseTime = _m.CloseTime;

                    db.Entry(_Agency).State = System.Data.Entity.EntityState.Modified;

                    db.SaveChanges();

                    return Json(new { Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }
                else
                {
                    return Json(new { Result = "NO", Message = LTMS.Languages.Resource.Data + Languages.Resource.WrongEntry + "!" }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "NO", Message = "Fail!" + ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }

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
