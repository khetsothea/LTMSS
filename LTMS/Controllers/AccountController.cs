using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using LTMS.Models.Lotteries;
using System.Net;
using System.Data.Entity;
using LTMS.Filters;

[CustomAuthorizeAttribute]
public class AccountController : Controller
{
    private LottieModels db = new LottieModels();

    // GET: Account
    public ActionResult Index()
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }

        return View(db.Users.ToList());
    }

    // GET: Account/Details/5
    public ActionResult Details(int? id)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }

        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        User user = db.Users.Find(id);
        if (user == null)
        {
            return HttpNotFound();
        }
        return View(user);
    }

    // GET: Account/Create
    public ActionResult Create()
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        return View();
    }

    // POST: Account/Create
    // To protect from overposting attacks, please enable the specific properties you want to bind to, for
    // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
    [HttpPost]
    [ValidateAntiForgeryToken]
    public ActionResult Create([Bind(Include = "UserId,UserName,Password,Name")] User user)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        if (ModelState.IsValid)
        {
            db.Users.Add(user);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        return View(user);
    }

    // GET: Account/Edit/5
    public ActionResult Edit(int? id)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        User user = db.Users.Find(id);
        if (user == null)
        {
            return HttpNotFound();
        }
        return View(user);
    }

    // POST: Account/Edit/5
    // To protect from overposting attacks, please enable the specific properties you want to bind to, for
    // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
    [HttpPost]
    [ValidateAntiForgeryToken]
    public ActionResult Edit([Bind(Include = "UserId,UserName,Password,Name")] User user)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        if (ModelState.IsValid)
        {
            db.Entry(user).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        return View(user);
    }

    // GET: Account/Delete/5
    public ActionResult Delete(int? id)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        if (id == null)
        {
            return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }
        User user = db.Users.Find(id);
        if (user == null)
        {
            return HttpNotFound();
        }
        return View(user);
    }

    // POST: Account/Delete/5
    [HttpPost, ActionName("Delete")]
    [ValidateAntiForgeryToken]
    public ActionResult DeleteConfirmed(int id)
    {
        if (Session["UserId"] == null)
        {
            return RedirectToAction("Login", "Account");
        }
        User user = db.Users.Find(id);
        db.Users.Remove(user);
        db.SaveChanges();
        return RedirectToAction("Index");
    }

    [AllowAnonymous]
    // GET: Account/Create
    public ActionResult Login()
    {
        return View();
    }

    [AllowAnonymous]
    [HttpPost]
    public ActionResult Login(User u)
    {
        var _ReturnUrl = Request.QueryString["ReturnUrl"];

        // var v = db.USERS.Where(a => a.UserName.Equals(u.UserName) && a.Password.Equals(u.Password)).FirstOrDefault();
        var v = (from c in db.Users
                 where c.UserName == u.UserName
                 && c.Password == u.Password
                 select c).FirstOrDefault();
        if (v != null)
        {

            //Session["ProvinceName"] = p.ProvinceName;
            Session["UserId"] = v.UserId.ToString();
            Session["UserName"] = v.UserName.ToString();
            Session["Name"] = v.Name.ToString();
            //Session["isAdmin"] = v.isAdmin;s
            if (isLogin() == true)
            {
                if(_ReturnUrl == null)
                {
                    _ReturnUrl = "";
                }
                if (_ReturnUrl.Trim() != "")
                {
                   return Redirect(_ReturnUrl);
                }
                else
                {
                    return RedirectToAction("Clients", "Front");
                }
                return RedirectToAction("Clients", "Front");
            }
            else
            {
                ModelState.AddModelError(string.Empty, "លេខទូរស័ព្ទ ឬ លេខសម្ងាត់របស់មិនត្រឹមត្រូវទេ!..");

                return View();
            }
            // return Json(new { success = true, message = "Login successfully!" }, "application/json", JsonRequestBehavior.AllowGet);
        }
        else
        {
            ModelState.AddModelError(string.Empty, "លេខទូរស័ព្ទ ឬ លេខសម្ងាត់របស់មិនត្រឹមត្រូវទេ!..");

            return View();
        }
        // MESSAGE = "Login Failse!..";
        //return Json(new { success = false, message = "Login fail!" }, "application/json", JsonRequestBehavior.AllowGet);

    }

    [AllowAnonymous]
    public ActionResult Logout()
    {
        // this action is for handle post (login)
        //Session.Clear();
        //Session.RemoveAll();
        //Session.Abandon();
        // HttpContext.UserId = new GenericPrincipal(new GenericIdentity(string.Empty), null);
        Session["UserId"] = null;
        Session["UserName"] = null;
        Session["Name"] = null;
        Session.Clear();
        System.Web.HttpContext.Current.Session.RemoveAll();
        System.Web.HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        System.Web.HttpContext.Current.Response.Cache.SetNoServerCaching();
        System.Web.HttpContext.Current.Response.Cache.SetNoStore();
        return RedirectToAction("Login", "Account");


    }
    public Boolean isLogin()
    {
        // this action is for handle post (login)
        if (Session["UserId"] == null)
        {
            return false;
        }
        else
        {
            return true;
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

