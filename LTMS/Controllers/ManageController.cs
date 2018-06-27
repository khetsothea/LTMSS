using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using LTMS.Models;
using LTMS.Filters;
using LTMS.Models.Lotteries;
using LTMS.Models.Lotteries.ViewModels;
using System.Collections.Generic;
using PagedList;
using System.Data.SqlClient;
using System.Data;
using LTMS.Utinities;
using Newtonsoft.Json;
using AMIS.Controllers;

namespace LTMS.Controllers
{
    [CustomAuthorizeAttribute]
    public class ManageController : Controller
    {
        //private SpAuthor spAuth = new SpAuthor();
        private LottieModels db = new LottieModels();
        string connect = Properties.Settings.Default.Conn;
        UtiHelperController spUti = new UtiHelperController();
        public ActionResult Index()
        {
            // var _Agency = ViewAgency();
           var queryAgency = db.Database
                     .SqlQuery<int>("SELECT COUNT(*) AS NumAgency FROM Agencies WHERE ISNULL(StatusID,1)<>0")
                     .Single();
            ViewBag.NumAgency = 0;
            ViewBag.NumAgency = queryAgency;

            var queryUser = db.Database
                     .SqlQuery<int>("SELECT COUNT(*) AS  NumUser  FROM Users")
                     .Single();
            ViewBag.NumUser = 0;
            ViewBag.NumUser = queryUser;
            string sql;
            sql= " SELECT   ISNULL(SUM(ISNULL(sp.PlayAmount, 0)),0) AS SPlayAmount FROM dbo.tblPlayDetails sp INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID "
                        + " WHERE p.Shift=1 AND p.PlayDate = FORMAT(GETDATE(), 'yyyy-MM-dd') GROUP BY p.PlayDate";
            var queryAmountPlayedAN = spUti.GetScalar(sql, "0");
            ViewBag.AmountPlayedAN ="0";
            ViewBag.AmountPlayedAN = queryAmountPlayedAN.ToString();

            sql = " SELECT  ISNULL(SUM(ISNULL(sp.PlayAmount, 0)),0) AS SPlayAmount FROM dbo.tblPlayDetails sp INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID "
                       + " WHERE p.Shift=2 AND p.PlayDate = FORMAT(GETDATE(), 'yyyy-MM-dd') GROUP BY p.PlayDate";


            var queryAmountPlayedEV = spUti.GetScalar(sql, "0");
            ViewBag.AmountPlayedEV ="0";
            ViewBag.AmountPlayedEV = queryAmountPlayedEV;

            DataTable _dt;

            _dt = spUti.GetTable("", null);

            sql = "sp_TopPlayamount";

            List<ViewTopPlayamount> topPlay = new List<ViewTopPlayamount>();

            SqlParameter[] sqlParams = {
                                                new SqlParameter("@PlayDate",DateTime.Now.ToString("yyyy-MM-dd")),
                                                new SqlParameter("@Shift",0)
                                             };
            _dt = spUti.GetTableStore(sql, "myTable", sqlParams);

            foreach (DataRow dr in _dt.Rows)
            {
                topPlay.Add(new ViewTopPlayamount
                {
                    PlayDate = DateTime.Parse(dr["PlayDate"].ToString()),
                    SPlayAmount = Double.Parse(dr["SPlayAmount"].ToString()),
                    Post = dr["Post"].ToString(),
                    Number = dr["Number"].ToString()

                });
            }

            ViewBag.TopPlay = topPlay;

            return View();
        }

        [HttpGet]
        public ActionResult ViewAgency(int? id)
        {
            if(id != null)
            {
                ViewBag.ID = id;
                ViewBag.SLStatus = db.Status.ToList();
                ViewAgencyCustom _Agency = new ViewAgencyCustom();
                var sql = "";
                sql = "sp_getAgencyPlayAmountByDate";



                DataTable _dt = new DataTable();

                SqlParameter[] sqlParams = {
                                                new SqlParameter("@PlayDate",DateTime.Now.ToString("yyyy-MM-dd")),
                                                new SqlParameter("@CustomerID",id),
                                                new SqlParameter("@Shift",1)

                                             };
                SqlParameter[] sqlParamsE = {
                                                new SqlParameter("@PlayDate",DateTime.Now.ToString("yyyy-MM-dd")),
                                                new SqlParameter("@CustomerID",id),
                                                new SqlParameter("@Shift",2)

                                             };

                var PlayAmountSE = spUti.GetScalarStore(sql, "myTable", sqlParamsE,"0");
                var PlayAmountSA = spUti.GetScalarStore(sql, "myTable1", sqlParams, "0");

                //var PlayAmountSE = spUti.GetScalar(sql, "0");
                ViewBag.PlayAmountSE = "0";
                ViewBag.PlayAmountSE = PlayAmountSE;
                ViewBag.PlayAmountSA = "0";
                ViewBag.PlayAmountSA = PlayAmountSA;

                _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID == id).ToList();
                _Agency.ListAgency = db.ViewAgencys.Where(m => m.AgencyID == id).ToList();
                return View(_Agency);
            }
            else
            {
                return Redirect("/Manage/Agency");
            }
        }

        public ActionResult ResultList(string sortOrder, string currentFilter, string searchDate, int? searchShift, string searchFrom, string searchTo)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.searchFrom = String.IsNullOrEmpty(searchFrom) ? "0" : searchFrom;
            ViewBag.searchTo = String.IsNullOrEmpty(searchTo) ? "100" : searchTo;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "PlayDate" : "";
            ViewBag.DateSortParm = sortOrder == "PlayDate" ? "PlayDate" : "Post";

            if (searchDate != null)
            {
                //page = 1;
            }
            else
            {
                searchDate = currentFilter;
            }

            ViewBag.CurrentFilter = searchDate;

            var _ListAgency = from s in db.Agencies
                              select s;

            List<tblResultSE> ResultSE = new List<tblResultSE>();

            List<tblResultSA> ResultSA = new List<tblResultSA>();

            if (searchDate == null)
            {
                searchDate = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if (searchShift == null)
            {
                searchShift = 0;
            }
            if (!String.IsNullOrEmpty(searchDate))
            {
                ResultSA = db.tblResultSAs.SqlQuery("SELECT * FROM dbo.tblResultSA WHERE ResultDate='" + searchDate + "'").ToList();

                ResultSE = db.tblResultSEs.SqlQuery("SELECT * FROM dbo.tblResultSE WHERE ResultDate='"+ searchDate + "'").ToList();

            }

            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            ViewBag.ResultSA = ResultSA;
            ViewBag.ResultSE = ResultSE;

            return View();
        }
        public ActionResult Result(int? id)
        {
            if (id != null)
            {
                ViewBag.ID = id;
                ViewBag.SLStatus = db.Status.ToList();
                ViewAgencyCustom _Agency = new ViewAgencyCustom();
                _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID == id).ToList();
                _Agency.ListAgency = db.ViewAgencys.Where(m => m.AgencyID == id).ToList();
                return View(db.tblResultSAs.ToList());
            }
            else
            {
                return View();
            }
        }

        public ActionResult Document(int? id)
        {
            if (id != null)
            {
                ViewBag.ID = id;
                ViewBag.SLStatus = db.Status.ToList();
                ViewAgencyCustom _Agency = new ViewAgencyCustom();
                _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID == id).ToList();
                _Agency.ListAgency = db.ViewAgencys.Where(m => m.AgencyID == id).ToList();
                return View(db.tblResultSAs.ToList());
            }
            else
            {
                return View();
            }
        }

        public ActionResult ShowPlay(int? id)
        {

            if (id != null)
            {
                ViewBag.ID = id;
                ViewBag.SLStatus = db.Status.ToList();
                ViewAgencyCustom _Agency = new ViewAgencyCustom();
                _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID == id).ToList();
                _Agency.ListAgency = db.ViewAgencys.Where(m => m.AgencyID == id).ToList();
                return View(db.tblResultSAs.ToList());
            }
            else
            {
                return View();
            }
        }

       // [HttpPost]
        public ActionResult _LoadPlay(FormCollection _m)
        {
            //if (ModelState.IsValid)
            //{
            //    db.tblPlays.Add(_m);
            //    db.SaveChanges();
            //    return Json(new { Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);
            //}
            //return Json(new { Result = "NO", Message = "Fail!" }, "application/json", JsonRequestBehavior.AllowGet);

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_LoadPlay";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    var PlayDate = _m["PlayDate"];
                    var Shift = _m["Shift"];
                    var CustomerID = _m["CustomerID"];

                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"].ToString()));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"].ToString()));
                    command.Parameters.Add(new SqlParameter("@CustomerID", CustomerID));
                    command.Parameters.Add(new SqlParameter("@Status", 1));

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();

                    int rowsAffected = sda.Fill(dt);
                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }
                    string jsonString = string.Empty;
                    jsonString = JsonConvert.SerializeObject(dt);
                    List<DataRow> listtablename = dt.AsEnumerable().ToList();

                    var list = new List<Dictionary<string, object>>();
                    var _total = 0;
                    var _totalAfterCommission = 0;
                    var _AgcCommission = 0;
                    var _MaxSession = 1;

                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();

                        _total += int.Parse(row["TotalAmount"].ToString());
                        _MaxSession = int.Parse(row["MaxSession"].ToString());
                        _AgcCommission = int.Parse(row["AgcCommission"].ToString());

                        foreach (DataColumn col in dt.Columns)
                        {
                            dict[col.ColumnName] = (Convert.ToString(row[col]));
                        }

                        list.Add(dict);
                    }
                    var GetAfterComm = 100 - _AgcCommission;
                    var TotalAfterCommission = _total * (100 - _AgcCommission);

                    return Json(new { Status = "OK", Result = list, Total = _total * 100, TotalAfterComm = TotalAfterCommission, AgcCommission = GetAfterComm, MaxSession = _MaxSession }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        public ActionResult ATranList(int? id, string FDate, string TDate)
        {

            return View();
        }
        public ActionResult DocDetail(int? id,string FDate , string TDate  )
        {

            return View();
        }
        public ActionResult _LoadDoDetail(FormCollection _m)//int? id,string FDate, string TDate
        {
            DataTable dt = new DataTable();
            string jsonString = string.Empty;
            jsonString = JsonConvert.SerializeObject(dt);
            List<DataRow> listtablename = dt.AsEnumerable().ToList();
            var list = new List<Dictionary<string, object>>();

            try
            {
                var sql = "sp_Doc_Detail";
                var FDate = DateTime.Now.ToString("yyyy-mm-dd");
                var TDate = DateTime.Now.ToString("yyyy-mm-dd");
                var CustomerID = 0;

                if (_m["FromDate"] != null){ FDate = _m["FromDate"]; }

                if (_m["ToDate"] != null){ TDate= _m["ToDate"]; }

                if (_m["CustomerID"] != null) { CustomerID = int.Parse(_m["CustomerID"]);}

                SqlParameter[] sqlParams = {    new SqlParameter("@FDate",FDate),
                                                new SqlParameter("@TDate",TDate),
                                                new SqlParameter("@CustomerID",CustomerID)
                                            };

                dt = spUti.GetTableStore(sql, "myTable", sqlParams);
                var _total = 0;

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        //_total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            if (col.ColumnName == "PlayDate")
                            {
                                var v = Convert.ToString(row[col]);
                                dict[col.ColumnName] = DateTime.Parse(v).ToString("dd-MM");
                            }
                            else
                            {
                                dict[col.ColumnName] = (Convert.ToString(row[col]));
                            }

                        }

                        list.Add(dict);
                    }
                    return Json(new { Status = "OK", Result = list, Total = _total * 100 }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }

            catch(Exception ex)
            {
                return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }
            return Json(new { Status = "NO", Message = "Error" }, "application/json", JsonRequestBehavior.AllowGet);

        }

        public ActionResult _ATranList(FormCollection _m)//int? id,string FDate, string TDate
        {
            DataTable dt = new DataTable();
            string jsonString = string.Empty;
            jsonString = JsonConvert.SerializeObject(dt);
            List<DataRow> listtablename = dt.AsEnumerable().ToList();
            var list = new List<Dictionary<string, object>>();

            try
            {
                var sql = "sp_getClientCreditTran";
                var FDate = DateTime.Now.ToString("yyyy-mm-dd");
                var TDate = DateTime.Now.ToString("yyyy-mm-dd");
                var CustomerID = 0;

                if (_m["FromDate"] != null) { FDate = _m["FromDate"]; }

                if (_m["ToDate"] != null) { TDate = _m["ToDate"]; }

                if (_m["CustomerID"] != null) { CustomerID = int.Parse(_m["CustomerID"]); }

                SqlParameter[] sqlParams = {    new SqlParameter("@FTranDate",FDate),
                                                new SqlParameter("@TTranDate",TDate),
                                                new SqlParameter("@AgencyID",CustomerID)
                                            };

                dt = spUti.GetTableStore(sql, "myTable", sqlParams);
                var _total = 0;

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        //_total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            if (col.ColumnName == "TranDate")
                            {
                                var v = Convert.ToString(row[col]);
                                dict[col.ColumnName] = DateTime.Parse(v).ToString("dd-MM");
                            }
                            else
                            {
                                dict[col.ColumnName] = (Convert.ToString(row[col]));
                            }

                        }

                        list.Add(dict);
                    }
                    return Json(new { Status = "OK", Result = list, Total = _total * 100 }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }

            catch (Exception ex)
            {
                return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }
            return Json(new { Status = "NO", Message = "Error" }, "application/json", JsonRequestBehavior.AllowGet);

        }

        public ActionResult _AFindTran(FormCollection _m)//int? id,string FDate, string TDate
        {
            DataTable dt = new DataTable();
            string jsonString = string.Empty;
            jsonString = JsonConvert.SerializeObject(dt);
            List<DataRow> listtablename = dt.AsEnumerable().ToList();
            var list = new List<Dictionary<string, object>>();

            try
            {
                var sql = "sp_findClientCreditTran";
                var FDate = DateTime.Now.ToString("yyyy-mm-dd");
                var TDate = DateTime.Now.ToString("yyyy-mm-dd");
                var TranID = 0;


                if (_m["ID"] != null) { TranID = int.Parse(_m["ID"]); }

                SqlParameter[] sqlParams = { new SqlParameter("@TranID", TranID) };

                dt = spUti.GetTableStore(sql, "myTable", sqlParams);
                var _total = 0;

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        //_total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            if (col.ColumnName == "TranDate")
                            {
                                var v = Convert.ToString(row[col]);
                                dict[col.ColumnName] = DateTime.Parse(v).ToString("yyyy-MM-dd");
                            }
                            else
                            {
                                dict[col.ColumnName] = (Convert.ToString(row[col]));
                            }

                        }

                        list.Add(dict);
                    }
                    return Json(new { Status = "OK", Result = list, Total = _total * 100 }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }

            catch (Exception ex)
            {
                return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }
            return Json(new { Status = "NO", Message = "Error" }, "application/json", JsonRequestBehavior.AllowGet);

        }

        public ActionResult DailyPlay(int? id)
        {
            if (id != null)
            {
                ViewBag.ID = id;
                ViewBag.SLStatus = db.Status.ToList();
                ViewAgencyCustom _Agency = new ViewAgencyCustom();
                _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID == id).ToList();
                _Agency.ListAgency = db.ViewAgencys.Where(m => m.AgencyID == id).ToList();
                return View(db.tblResultSAs.ToList());
            }
            else
            {
                return View();
            }
        }
        [HttpPost]
        public JsonResult _AgencList(FormCollection frm = null)
        {
            var query = "";
            try

            {
                query = "select * from ViewAgency";
                var _id = frm["id"];
                var where = "";
                if (int.Parse(_id) > 0)
                {
                    where = " where AgencyID ='" + _id + "' ";
                }

                query += where + "  order by AgencyID ";

                List<ViewAgency> v_ViewAgency = db.Database.SqlQuery<ViewAgency>(query).OrderBy(c=>c.AgencyID).ToList();

                return Json(new { Result = "OK", Records = v_ViewAgency, sql = query });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message, sql = query });
            }
        }

        [HttpPost]
        public JsonResult _AgenCMList(FormCollection frm = null)
        {
            var query = "";
            try

            {
                query = "select * from AgencyCommissions";
                var _id = frm["id"];
                var where = "";
                if (int.Parse(_id) > 0)
                {
                    where = " where AgencyID ='" + _id + "' ";
                }

                query += where;

                List<AgencyCommission> v_AgencyCommission = db.Database.SqlQuery<AgencyCommission>(query).ToList();
                return Json(new { Result = "OK", Records = v_AgencyCommission, sql = query });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message, sql = query });
            }
        }


        public ActionResult Agency(string sortOrder, string currentFilter, string searchString, int? page, int? searchType)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "AgencyName" : "";
            ViewBag.DateSortParm = sortOrder == "AgencyName" ? "AgencyNickname" : "AgencyName";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var _ListAgency = from s in db.Agencies
                           select s;

            ViewAgencyCustom _Agency = new ViewAgencyCustom();

            _Agency.AgencyCommissions = db.AgencyCommission.Where(m => m.AgencyID ==1).ToList();

            var students = from s in db.ViewAgencys where s.StatusID==1
                           select s;


            if (!String.IsNullOrEmpty(searchString))
            {

                if (searchType == 1)
                {
                    students = students.Where(s => s.AgencyName.ToLower().Contains(searchString.ToLower()));
                }
                else if (searchType == 2)
                {
                    students = students.Where(s => s.AgencyNickname.ToLower().Contains(searchString.ToLower()));
                }
                else if (searchType == 3)
                {
                    students = students.Where(s => s.PhoneNumber.ToLower().Contains(searchString.ToLower()));
                }

            }
            switch (sortOrder)
            {
                case "AgencyName":
                    students = students.OrderByDescending(s => s.AgencyID);
                    break;
                case "AgencyNickname":
                    students = students.OrderBy(s => s.AgencyID);
                    break;
                case "PhoneNumber":
                    students = students.OrderBy(s => s.AgencyID);
                    break;
                default:  // Name ascending
                    students = students.OrderBy(s => s.AgencyID);
                    break;
            }


            ViewBag.searchType = searchType;

            int pageSize = 5;
            int pageNumber = (page ?? 1);
            return View(students.ToList().ToPagedList(pageNumber, pageSize));
        }

        public ActionResult MaxPlayNum(string sortOrder, string currentFilter, string searchDate, int? searchShift, string searchFrom, string searchTo)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.searchFrom = String.IsNullOrEmpty(searchFrom) ? "0":searchFrom ;
            ViewBag.searchTo = String.IsNullOrEmpty(searchTo) ? "100" : searchTo;
            //ViewBag.searchTo = String.IsNullOrEmpty(searchShift) ? "0" : searchTo;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "PlayDate" : "";
            ViewBag.DateSortParm = sortOrder == "PlayDate" ? "PlayDate" : "Post";

            if (searchDate != null)
            {
                //page = 1;
            }
            else
            {
                searchDate = currentFilter;
            }

            ViewBag.CurrentFilter = searchDate;

            var _ListAgency = from s in db.Agencies
                              select s;

            List<ViewTopPlayamount> _Agency = new List<ViewTopPlayamount>();


            if (searchDate == null)
            {
                searchDate = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if (searchShift == null)
            {
                searchShift = 0;
            }

            ViewBag.searchShift = searchShift;
            if (!String.IsNullOrEmpty(searchDate))
            {

                DataTable _dt;

                _dt = spUti.GetTable("", null);

                String sql = "sp_TopPlayamount";

                //List<Employee> employeeList = new List<Employee>();  // Employee should contain  EmployeeId, EmployeeName as properties
                SqlParameter[] sqlParams = {
                                                new SqlParameter("@PlayDate",searchDate),
                                                new SqlParameter("@Shift",ViewBag.searchShift),
                                                new SqlParameter("@STo",ViewBag.searchTo),
                                                new SqlParameter("@SFrom",ViewBag.searchFrom)
                                             };
                _dt = spUti.GetTableStore(sql, "myTable", sqlParams);

                //_Agency = db.Database.SqlQuery<ViewTopPlayamount>("sp_TopPlayamount @PlayDate, @Shift, @SFrom, @STo",
                //                        new SqlParameter("@Shift", SqlDbType.Int).Value = searchShift.ToString(),
                //                        new SqlParameter("@SFrom",SqlDbType.Int).Value = ViewBag.searchFrom,
                //                        new SqlParameter("@STo", SqlDbType.Int).Value =  ViewBag.searchTo,
                //                        new SqlParameter("@PlayDate", SqlDbType.Date).Value = searchDate
                //                        //new SqlParameter("@PlayDate", searchDate)
                //                        ).ToList();

                foreach (DataRow dr in _dt.Rows)
                {
                    _Agency.Add(new ViewTopPlayamount
                    {
                        PlayDate = DateTime.Parse(dr["PlayDate"].ToString()),
                        SPlayAmount = Double.Parse(dr["SPlayAmount"].ToString()),
                        Post =dr["Post"].ToString(),
                        Number = dr["Number"].ToString()
                    });
              }


            }
            else
            {
                //_Agency = db.Database.SqlQuery<ViewTopPlayamount>("sp_TopPlayamount @PlayDate",

                //                       new SqlParameter("@SFrom", ViewBag.searchFom),
                //                        new SqlParameter("@STo", ViewBag.searchTo),
                //                        new SqlParameter("@PlayDate", searchDate)

                //       ).ToList();
            }



            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            //int pageSize = 100;
            //int pageNumber = (page ?? 1);
            return View(_Agency);
        }

        public ActionResult Lerng(string sortOrder, string currentFilter, string searchDate, int? searchShift, string searchFrom, string searchTo)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.searchFrom = String.IsNullOrEmpty(searchFrom) ? "0" : searchFrom;
            ViewBag.searchTo = String.IsNullOrEmpty(searchTo) ? "100" : searchTo;
            //ViewBag.searchTo = String.IsNullOrEmpty(searchShift) ? "0" : searchTo;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "PlayDate" : "";
            ViewBag.DateSortParm = sortOrder == "PlayDate" ? "PlayDate" : "Post";

            if (searchDate != null)
            {
                //page = 1;
            }
            else
            {
                searchDate = currentFilter;
            }

            ViewBag.CurrentFilter = searchDate;

            var _ListAgency = from s in db.Agencies
                              select s;

            List<ViewTopPlayamount> _Agency = new List<ViewTopPlayamount>();


            if (searchDate == null)
            {
                searchDate = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if (searchShift == null)
            {
                searchShift = 0;
            }

            ViewBag.searchShift = searchShift;
            if (!String.IsNullOrEmpty(searchDate))
            {

                DataTable _dt;

                _dt = spUti.GetTable("", null);

                String sql = "sp_TopPlayamount";

                //List<Employee> employeeList = new List<Employee>();  // Employee should contain  EmployeeId, EmployeeName as properties
                SqlParameter[] sqlParams = {
                                                new SqlParameter("@PlayDate",searchDate),
                                                new SqlParameter("@Shift",ViewBag.searchShift),
                                                new SqlParameter("@STo",ViewBag.searchTo),
                                                new SqlParameter("@SFrom",ViewBag.searchFrom)
                                             };
                _dt = spUti.GetTableStore(sql, "myTable", sqlParams);

                //_Agency = db.Database.SqlQuery<ViewTopPlayamount>("sp_TopPlayamount @PlayDate, @Shift, @SFrom, @STo",
                //                        new SqlParameter("@Shift", SqlDbType.Int).Value = searchShift.ToString(),
                //                        new SqlParameter("@SFrom",SqlDbType.Int).Value = ViewBag.searchFrom,
                //                        new SqlParameter("@STo", SqlDbType.Int).Value =  ViewBag.searchTo,
                //                        new SqlParameter("@PlayDate", SqlDbType.Date).Value = searchDate
                //                        //new SqlParameter("@PlayDate", searchDate)
                //                        ).ToList();

                foreach (DataRow dr in _dt.Rows)
                {
                    _Agency.Add(new ViewTopPlayamount
                    {
                        PlayDate = DateTime.Parse(dr["PlayDate"].ToString()),
                        SPlayAmount = Double.Parse(dr["SPlayAmount"].ToString()),
                        Post = dr["Post"].ToString(),
                        Number = dr["Number"].ToString()
                    });
                }


            }
            else
            {
                //_Agency = db.Database.SqlQuery<ViewTopPlayamount>("sp_TopPlayamount @PlayDate",

                //                       new SqlParameter("@SFrom", ViewBag.searchFom),
                //                        new SqlParameter("@STo", ViewBag.searchTo),
                //                        new SqlParameter("@PlayDate", searchDate)

                //       ).ToList();
            }



            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            //int pageSize = 100;
            //int pageNumber = (page ?? 1);
            return View(_Agency);
        }

        public ActionResult ManagTimePlay(string sortOrder, string currentFilter, string searchDate, int? searchShift, int? Agency, int? searchS)

        {
            return View();
        }

        public ActionResult ManagDPlay(string sortOrder, string currentFilter, string searchDate, int? searchShift, int? Agency, int? searchS)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.searchAgency = 0;
            //ViewBag.searchS = String.IsNullOrEmpty(searchS) ? "100" : searchTo;
            //ViewBag.searchShift = String.IsNullOrEmpty(searchShift) ? "0" : searchTo;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "PlayDate" : "";
            ViewBag.DateSortParm = sortOrder == "PlayDate" ? "PlayDate" : "Post";

            if (searchDate != null)
            {
                //page = 1;
            }
            else
            {
                searchDate = currentFilter;
            }

            if (searchDate == null) { searchDate = DateTime.Now.ToString("yyyy-MM-dd"); }

            if (searchShift == null) { searchShift = 0; }
            if (Agency == null) { Agency = 0; }
            if (searchS == null) { searchS = 0; }

            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            ViewBag.Agency = Agency;
            ViewBag.searchS = searchS;
            ViewBag.CurrentFilter = searchDate;

            var _ListAgency = from s in db.Agencies
                              select s;
            List<ViewMPLay> _Agency = new List<ViewMPLay>();
            if (!String.IsNullOrEmpty(searchDate))
            {
                DataTable _dt;
                _dt = spUti.GetTable("", null);
                String sql = "sp_Get_MPLay";
                //*  *//List<Employee> employeeList = new List<Employee>();  // Employee should contain  EmployeeId, EmployeeName as properties
                SqlParameter[] sqlParams = {
                                                new SqlParameter("@PlayDate",ViewBag.searchDate),
                                                new SqlParameter("@Shift",ViewBag.searchShift),
                                                new SqlParameter("@AgencyID",ViewBag.Agency),
                                                new SqlParameter("@StatusID",ViewBag.searchS)

                                             };

                _dt = spUti.GetTableStore(sql, "myTable", sqlParams);

                foreach (DataRow dr in _dt.Rows)
                {
                    _Agency.Add(new ViewMPLay
                    {
                        PlayDate = dr["PlayDate"].ToString(),
                        Shift = int.Parse(dr["Shift"].ToString()),
                        PlayDID = int.Parse(dr["PlayDID"].ToString()),
                        CustomerID = int.Parse(dr["CustomerID"].ToString()),
                        AgencyName = dr["AgencyName"].ToString(),
                        PlayID = int.Parse(dr["PlayID"].ToString()),
                        Post = dr["Post"].ToString(),
                        Number = dr["Number"].ToString(),
                        PlayAmount = double.Parse(dr["PlayAmount"].ToString()),
                        StatusID = int.Parse(dr["StatusID"].ToString()),
                        Digit = int.Parse(dr["Digit"].ToString()),
                    });
                }


            }
            else
            {

            }



            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            return View(_Agency);
        }
        public ActionResult WinNumber(string sortOrder, string currentFilter, string searchDate, int? searchShift, string searchFrom, string searchTo)

        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.searchFrom = String.IsNullOrEmpty(searchFrom) ? "0" : searchFrom;
            ViewBag.searchTo = String.IsNullOrEmpty(searchTo) ? "100" : searchTo;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "PlayDate" : "";
            ViewBag.DateSortParm = sortOrder == "PlayDate" ? "PlayDate" : "Post";

            if (searchDate != null)
            {
                //page = 1;
            }
            else
            {
                searchDate = currentFilter;
            }

            ViewBag.CurrentFilter = searchDate;

            var _ListAgency = from s in db.Agencies
                              select s;

            List<ViewWinNum> _Agency = new List<ViewWinNum>();


            if (searchDate == null)
            {
                searchDate = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if (searchShift == null)
            {
                searchShift = 0;
            }
            if (!String.IsNullOrEmpty(searchDate))
            {

                _Agency = db.Database.SqlQuery<ViewWinNum>("EXEC dbo.sp_FinWinNumber @ResultDate=N'"+ searchDate + "',  @RShift='" + searchShift + "'"
                                       //new SqlParameter("@RShift", 1),
                                       //new SqlParameter("@ResultDate", searchDate)
                                       ).ToList();


            }
            else
            {
                _Agency = db.Database.SqlQuery<ViewWinNum>("EXEC dbo.sp_FinWinNumber @ResultDate=N'" + searchDate + "',  @RShift='" + searchShift + "'"
                                       //new SqlParameter("@RShift", 1),
                                       //new SqlParameter("@ResultDate", searchDate)
                                       ).ToList();
            }



            ViewBag.searchShift = searchShift;
            ViewBag.searchDate = searchDate;
            //int pageSize = 100;
            //int pageNumber = (page ?? 1);
            return View(_Agency);
        }

        public ActionResult AgencySave(Agency agency)
        {
            return View();
        }

        /// <summary>
        /// _addOrganizationType
        /// </summary>
        /// <param name="disposing"></param>
        public ActionResult _doPay(FormCollection _m)
        {

            if (_m == null)
            {
                return Json(new { Status = "NO", Result = "NO", Message = "Agency" }, "application/json", JsonRequestBehavior.AllowGet);
            }
            var TranDate = _m["TranDate"];
            var AgencyID = _m["AgencyID"];
            var TranAmunt = _m["TranAmunt"];
            var TranType = _m["TranType"];
            //  TranAmunt ,
            //  TranType

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_doPayment";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@TranDate", TranDate));
                    command.Parameters.Add(new SqlParameter("@AgencyID", AgencyID));
                    command.Parameters.Add(new SqlParameter("@TranAmunt", TranAmunt));
                    command.Parameters.Add(new SqlParameter("@TranType", TranType));

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);

                }

            }
        }

        public ActionResult _doPayE(FormCollection _m)
        {

            if (_m == null)
            {
                return Json(new { Status = "NO", Result = "NO", Message = "Agency" }, "application/json", JsonRequestBehavior.AllowGet);
            }
            var TranDate = _m["TranDate"];
            var AgencyID = _m["AgencyID"];
            var TranAmunt = _m["TranAmunt"];
            var TranType = _m["TranType"];
            var TranID = "0";
            if (_m["ID"] != null)
            {
                 TranID = _m["ID"];
            }
            //  TranAmunt ,
            //  TranType

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_doEditPayment";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@TranDate", TranDate));
                    //command.Parameters.Add(new SqlParameter("@AgencyID", AgencyID));
                    command.Parameters.Add(new SqlParameter("@TranAmunt", TranAmunt));
                    //command.Parameters.Add(new SqlParameter("@TranType", TranType));
                    command.Parameters.Add(new SqlParameter("@TranID", TranID));

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);

                }

            }
        }

        public ActionResult _doPayD(FormCollection _m)
        {

            if (_m == null)
            {
                return Json(new { Status = "NO", Result = "NO", Message = "Agency" }, "application/json", JsonRequestBehavior.AllowGet);
            }
            var TranID = "0";
            if (_m["ID"] != null)
            {
                TranID = _m["ID"];
            }
            //  TranAmunt ,
            //  TranType

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_doDetelePayment";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@TranID", TranID));

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);

                }

            }
        }
        public ActionResult _AddAgency(Agency _m)
        {
            try
            {
                var _Agency = new Agency();
                if(_m.AgencyName == null)
                {
                    return Json(new { Result = "NO", Message = "សូមបញ្ចូលឈ្មោះភ្នាក់ងា!.." + "!" }, "application/json", JsonRequestBehavior.AllowGet);
                }

                var order = db.ViewAgencys.Where(x => x.AgencyName.Trim() == _m.AgencyName.Trim() && x.PhoneNumber.Trim() == _m.PhoneNumber.Trim()).FirstOrDefault();
                if (order != null)
                {
                    return Json(new { Result = "NO", Message = "ឈ្មោះនេះមានរួចហើយ" + "!.." }, "application/json", JsonRequestBehavior.AllowGet);
                }
                //_Agency = order;
                _Agency.AgencyID = _m.AgencyID;
                _Agency.AgencyName = _m.AgencyName;
                _Agency.AgencyNickname = _m.AgencyNickname;
                _Agency.GenderID = 1; // _m.GenderID;
                _Agency.PhoneNumber = _m.PhoneNumber;
                _Agency.Address = "";
                _Agency.StatusID = 1;
                db.Agencies.Add(_Agency);
                db.SaveChanges();

                return Json(new { Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Result = "NO", Message = "Fail!" + ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }

        }
        public ActionResult _editAgency(Agency _m)
        {
            try
            {
                var _Agency = new Agency();
                var order = db.ViewAgencys.Where(x => x.AgencyID == _m.AgencyID ).FirstOrDefault();
                if (order != null) // update
                {

                    //_Agency = order;
                    _Agency.AgencyID = _m.AgencyID;
                    _Agency.AgencyName = _m.AgencyName;
                    _Agency.AgencyNickname = _m.AgencyNickname;
                    _Agency.GenderID = 1;
                    _Agency.PhoneNumber = _m.PhoneNumber;
                    _Agency.Address = "";
                    _Agency.StatusID = 1;

                    db.Entry(_Agency).State = System.Data.Entity.EntityState.Modified;

                    db.SaveChanges();

                    return Json(new { Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }
                else
                {
                   return Json(new { Result = "NO", Message = LTMS.Languages.Resource.Data + Languages.Resource.WrongEntry +"!" }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "NO", Message = "Fail!" + ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult _DeleteAgency(int?id)

        {

            if(id==null)
            {
                return Json(new { Status = "NO", Result = "NO", Message = "" }, "application/json", JsonRequestBehavior.AllowGet);
            }
            var CurrentUser = "0";
            if (SpAuthor.getCurrentUser() != null)
            {
                CurrentUser = SpAuthor.getCurrentUser();
            }
            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_DeletAgencyByID";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@AgencyID", id));
                    command.Parameters.Add(new SqlParameter("@ActUser", CurrentUser));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }

        }
        public ActionResult _SaveResultRE(FormCollection _m)
        {
            var CurrentUser = "0";
            if (SpAuthor.getCurrentUser() != null)
            {
                CurrentUser = SpAuthor.getCurrentUser();
            }
            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_SaveResultE";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;

                    command.Parameters.Add(new SqlParameter("@ResultDate", DateTime.Now.ToString()));
                    command.Parameters.Add(new SqlParameter("@ResultTime", DateTime.Now.ToLocalTime().ToString()));
                    command.Parameters.Add(new SqlParameter("@ShiftID", 2));
                    command.Parameters.Add(new SqlParameter("@A1X2", _m["A1X2"]));
                    command.Parameters.Add(new SqlParameter("@A2X2", _m["A2X2"]));
                    command.Parameters.Add(new SqlParameter("@A3X2", _m["A3X2"]));
                    command.Parameters.Add(new SqlParameter("@A4X2", _m["A4X2"]));
                    command.Parameters.Add(new SqlParameter("@BX2", _m["BX2"]));

                    command.Parameters.Add(new SqlParameter("@CX2", _m["CX2"]));
                    command.Parameters.Add(new SqlParameter("@DX2", _m["DX2"]));
                    command.Parameters.Add(new SqlParameter("@LO1", _m["LO1"]));
                    command.Parameters.Add(new SqlParameter("@LO2", _m["LO2"]));
                    command.Parameters.Add(new SqlParameter("@LO3", _m["LO3"]));
                    command.Parameters.Add(new SqlParameter("@LO4", _m["LO4"]));
                    command.Parameters.Add(new SqlParameter("@LO5", _m["LO5"]));
                    command.Parameters.Add(new SqlParameter("@LO6", _m["LO6"]));
                    command.Parameters.Add(new SqlParameter("@LO7", _m["LO7"]));
                    command.Parameters.Add(new SqlParameter("@LO8", _m["LO8"]));
                    command.Parameters.Add(new SqlParameter("@LO9", _m["LO9"]));
                    command.Parameters.Add(new SqlParameter("@LO10", _m["LO10"]));
                    command.Parameters.Add(new SqlParameter("@LO11", _m["LO11"]));
                    command.Parameters.Add(new SqlParameter("@LO12", _m["LO12"]));
                    command.Parameters.Add(new SqlParameter("@LO13", _m["LO13"]));
                    command.Parameters.Add(new SqlParameter("@LO14", _m["LO14"]));
                    command.Parameters.Add(new SqlParameter("@LO15", _m["LO15"]));
                    command.Parameters.Add(new SqlParameter("@LO16", _m["LO16"]));
                    command.Parameters.Add(new SqlParameter("@LO17", _m["LO17"]));
                    command.Parameters.Add(new SqlParameter("@LO18", _m["LO18"]));
                    command.Parameters.Add(new SqlParameter("@LO19", _m["LO19"]));
                    command.Parameters.Add(new SqlParameter("@LO20", _m["LO20"]));
                    command.Parameters.Add(new SqlParameter("@LO21", _m["LO21"]));
                    command.Parameters.Add(new SqlParameter("@LO22", _m["LO22"]));
                    command.Parameters.Add(new SqlParameter("@LO23", _m["LO23"]));
                    command.Parameters.Add(new SqlParameter("@LO24", _m["LO24"]));
                    command.Parameters.Add(new SqlParameter("@LO25", _m["LO25"]));
                    command.Parameters.Add(new SqlParameter("@ActUser", CurrentUser));
                    //command.Parameters.Add(new SqlParameter("@ModifiedBy", _m["ModifiedBy"]));
                    //command.Parameters.Add(new SqlParameter("@CreatedDate", _m["CreatedDate"]));
                    //command.Parameters.Add(new SqlParameter("@ModefiedDate", _m["ModefiedDate"]));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }
        public ActionResult _SaveResultRA(FormCollection _m)
        {
            var CurrentUser = "0";
            if (SpAuthor.getCurrentUser() != null)
            {
                CurrentUser = SpAuthor.getCurrentUser();
            }
            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_SaveResultA";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@ResultDate", DateTime.Now.ToString()));
                    command.Parameters.Add(new SqlParameter("@ResultTime", DateTime.Now.ToLocalTime().ToString()));
                    command.Parameters.Add(new SqlParameter("@ShiftID", 1));
                    command.Parameters.Add(new SqlParameter("@A2", _m["A2"]));
                    command.Parameters.Add(new SqlParameter("@B2", _m["B2"]));
                    command.Parameters.Add(new SqlParameter("@C2", _m["C2"]));
                    command.Parameters.Add(new SqlParameter("@D2", _m["D2"]));
                    command.Parameters.Add(new SqlParameter("@H2", _m["H2"]));
                    command.Parameters.Add(new SqlParameter("@LO1", _m["LO1"]));
                    command.Parameters.Add(new SqlParameter("@LO2", _m["LO2"]));
                    command.Parameters.Add(new SqlParameter("@LO3", _m["LO3"]));
                    command.Parameters.Add(new SqlParameter("@LO4", _m["LO4"]));
                    command.Parameters.Add(new SqlParameter("@LO5", _m["LO5"]));
                    command.Parameters.Add(new SqlParameter("@LO6", _m["LO6"]));
                    command.Parameters.Add(new SqlParameter("@LO7", _m["LO7"]));
                    command.Parameters.Add(new SqlParameter("@LO8", _m["LO8"]));
                    command.Parameters.Add(new SqlParameter("@LO9", _m["LO9"]));
                    command.Parameters.Add(new SqlParameter("@LO10", _m["LO10"]));
                    command.Parameters.Add(new SqlParameter("@LO11", _m["LO11"]));
                    command.Parameters.Add(new SqlParameter("@LO12", _m["LO12"]));
                    command.Parameters.Add(new SqlParameter("@LO13", _m["LO13"]));
                    command.Parameters.Add(new SqlParameter("@LO14", _m["LO14"]));
                    command.Parameters.Add(new SqlParameter("@LO15", _m["LO15"]));
                    command.Parameters.Add(new SqlParameter("@LO16", _m["LO16"]));
                    command.Parameters.Add(new SqlParameter("@LO17", _m["LO17"]));
                    command.Parameters.Add(new SqlParameter("@LO18", _m["LO18"]));
                    command.Parameters.Add(new SqlParameter("@LO19", _m["LO19"]));
                    command.Parameters.Add(new SqlParameter("@LO20", _m["LO20"]));
                    command.Parameters.Add(new SqlParameter("@ActUser", CurrentUser));
                    //command.Parameters.Add(new SqlParameter("@ModifiedBy", _m["ModifiedBy"]));
                    //command.Parameters.Add(new SqlParameter("@CreatedDate", _m["CreatedDate"]));
                    //command.Parameters.Add(new SqlParameter("@ModefiedDate", _m["ModefiedDate"]));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        [HttpPost]
        public ActionResult _LoadDoc(FormCollection _m)
        {
            //if (ModelState.IsValid)
            //{
            //    db.tblPlays.Add(_m);
            //    db.SaveChanges();
            //    return Json(new { Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);
            //}
            //return Json(new { Result = "NO", Message = "Fail!" }, "application/json", JsonRequestBehavior.AllowGet);

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_LoadDoc";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    var PlayDate = _m["PlayDate"];
                    var Shift = _m["Shift"];
                    var CustomerID = _m["CustomerID"];

                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"].ToString()));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"].ToString()));
                    command.Parameters.Add(new SqlParameter("@CustomerID", CustomerID));
                    command.Parameters.Add(new SqlParameter("@Status", 1));

                    ////command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    // var i = command.ExecuteNonQuery();
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();

                    int rowsAffected = sda.Fill(dt);
                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }


                    string jsonString = string.Empty;
                    jsonString = JsonConvert.SerializeObject(dt);
                    List<DataRow> listtablename = dt.AsEnumerable().ToList();

                    var list = new List<Dictionary<string, object>>();
                    var _total = 0;

                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        _total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            dict[col.ColumnName] = (Convert.ToString(row[col]));
                        }

                        list.Add(dict);
                    }

                    return Json(new { Status = "OK", Result = list, Total = _total * 100 }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        [HttpPost]
        public ActionResult _ShowPlay(FormCollection _m)
        {
          

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_ShowPlay";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    var PlayDate = _m["PlayDate"];
                    var Shift = _m["Shift"];
                    var CustomerID = _m["CustomerID"];

                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"].ToString()));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"].ToString()));
                    command.Parameters.Add(new SqlParameter("@CustomerID", CustomerID));
                    command.Parameters.Add(new SqlParameter("@Status", 1));

                    ////command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    // var i = command.ExecuteNonQuery();
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();

                    int rowsAffected = sda.Fill(dt);
                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }


                    string jsonString = string.Empty;
                    jsonString = JsonConvert.SerializeObject(dt);
                    List<DataRow> listtablename = dt.AsEnumerable().ToList();

                    var list = new List<Dictionary<string, object>>();
                    var _total = 0;

                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        _total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            dict[col.ColumnName] = (Convert.ToString(row[col]));
                        }

                        list.Add(dict);
                    }

                    return Json(new { Status = "OK", Result = list, Total = _total * 100 }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        [HttpPost]
        public ActionResult _ShowPlayV1(FormCollection _m)
        {
            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try
                {
                    command.CommandText = "sp_ShowPlayedV1";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;

                    var PlayDate = _m["PlayDate"];
                    var Shift = _m["Shift"];
                    var CustomerID = _m["CustomerID"];

                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"].ToString()));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"].ToString()));
                    command.Parameters.Add(new SqlParameter("@CustomerID", CustomerID));

                    ////command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    
                    // var i = command.ExecuteNonQuery();
                    SqlDataAdapter sda = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();

                    int rowsAffected = sda.Fill(dt);

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    string jsonString = string.Empty;
                    jsonString = JsonConvert.SerializeObject(dt);
                    List<DataRow> listtablename = dt.AsEnumerable().ToList();

                    var list = new List<Dictionary<string, object>>();

                    var _total = 0;
                    var _totalAfterCommission = 0;
                    var _AgcCommission = 0;
                    var _MaxSession = 1;
                    var _session = 0;
                    var _GroupPOST = "";

                    var _totalRecord = dt.Rows.Count;
                    var _i = 0;
                    var _postTotal = 0.0;

                    var _TR = "";
                    var _PreTR = "";
                    var _CurTR = "";

                    var _sequen_Session = 0;

                    var _PrePost = "";
                    
                    var _CurPost = "";
                    var _CurGroupPost = "";
                    var _PreGroupPost = "";
                    var _CurSession = 0;
                    var _PreSession = 0;


                    foreach (DataRow row in dt.Rows)
                    {
                        _i += 1;

                        _CurGroupPost= row["GroupPost"].ToString();

                        _CurSession=int.Parse(row["Session"].ToString());
                        var _MinSessionPOSTID = int.Parse(row["MinSessionPOSTID"].ToString());
                        var _MaxSessionPOSTID = int.Parse(row["MaxSessionPOSTID"].ToString());
                        var _PlayID= int.Parse(row["PlayID"].ToString());
                        var _Post = row["Post"].ToString();
                        _CurTR = "";

                        var _OPENPOST = "<table><tbody><tr><td colspan=\"3\" style = \"font-size: 15px; text-align: right; \" >" + _Post + "(" + _CurSession + ") </td></tr>";
                        var _ENDPOST = "				  </tbody>"
                                        + "				  <tfoot style=\"border: 1px solid; \">"
                                          + "					  <tr>"
                                          + "						  <th colspan=\"3\">"
                                          + "							  D2:" + row["SumGroupPOSTAmountD2"].ToString()
                                          + "						  </th>"
                                          + "					  </tr>"
                                          + "					  <tr>"
                                          + "						  <th colspan=\"3\">"
                                          + "							  D3:" + row["SumGroupPOSTAmountD3"].ToString()
                                          + "						  </th>"
                                          + "					  </tr>"
                                          + "				  </tfoot>"
                                          + "			  </table>";

                        var _OPENSESSION = "<td style=\" vertical-align: top; \">"
                                            + "  <table class=\"tbsession\">"
                                            + "	  <tbody>"
                                            + "	    <tr>"
                                            + "		  <td>";


                        var _ENDSESSION = "		  </td>"
                                        + "	    </tr>"
                                        + "	  </tbody>"
                                        + "  </table>"
                                        + "</td>";

                        _CurSession = int.Parse(row["Session"].ToString());

                        if (_PlayID  == _MinSessionPOSTID)
                        {
                            _TR += _OPENSESSION ;
                        }


                        var _MaxGroupPOSTID= int.Parse(row["MaxGroupPOSTID"].ToString());
                        var _MinGroupPOSTID = int.Parse(row["MinGroupPOSTID"].ToString());

                        if (_PlayID == _MinGroupPOSTID)
                        {
                            //_TR = "<tr><td>" + row["GroupPost"].ToString() + "</td><td>:</td><td>" + row["GroupPost"].ToString() + "</td></tr>";
                            _TR += _OPENPOST;
                        }

                        var _PlayType = int.Parse(row["PlayType"].ToString());
                        if (_PlayType == 1)
                        {
                            _TR += "<tr><td>" + row["Number"].ToString() + "</td><td>:</td><td>" + row["PlayAmount"].ToString() + "</td></tr>";
                        }
                        else if (_PlayType == 5)
                        {
                            _TR += "<tr><td>" + row["Number"].ToString() + "</td><td>*:</td><td>" + row["PlayAmount"].ToString() + "</td></tr>";
                        }
                        else
                        {
                            _TR += "<tr><td>" + row["Number"].ToString() + "</td><td>:</td><td>" + row["PlayAmount"].ToString() + "</td></tr>";
                            _TR += "<tr><td></td><td><span><i class=\" fa fa-long-arrow-down \"></i></span>(" + row["NumberCount"].ToString() + "):</td><td></td></tr>";
                            _TR += "<tr><td>" + row["Number1"].ToString() + "</td><td>:</td><td>" + row["PlayAmount"].ToString() + "</td></tr>";
                        }
                        //<span><i class="fa fa-long-arrow-down"></i></span>(NumberCount)
                        if (_PlayID == _MaxGroupPOSTID)
                        {
                          
                            _TR += _ENDPOST;
                        }

                        
                        //End Session
                        if (_PlayID == _MaxSessionPOSTID)
                        {
                            _TR += _ENDSESSION;
                        }

                        _PreTR = _CurTR;
                        _PreSession = _CurSession;

                        //BEGINSESSION

                    }

                 
                    return Json(new { Status="OK", Result = _TR}, "application/json", JsonRequestBehavior.AllowGet);
                    _TR = "<td>"
                         + "  <table class=\"tbsession\">"
                         + "	  <tbody>"
                         + "	  <tr>"
                         + "		  <td>"
                         + "			  <table class=\"tbpost\">"
                         + "				  <tbody><tr>"
                         + "					  <th colspan=\"3\">"
                         + "						  A(1)"
                         + "					  </th>"
                         + "				  </tr>"
                         + "				  <tr><td>333</td><td>:</td><td>100</td></tr>"
                         + "				  <tr><td>333</td><td>:</td><td>100</td></tr>"
                         + "				  </tbody><tfoot style=\"border: 1px solid; \">"
                         + "					  <tr>"
                         + "						  <th colspan=\"3\">"
                         + "							  D2:100"
                         + "						  </th>"
                         + "					  </tr>"
                         + "					  <tr>"
                         + "						  <th colspan=\"3\">"
                         + "							  D3:100"
                         + "						  </th>"
                         + "					  </tr>"
                         + "				  </tfoot>"
                         + "			  </table>"
                         + "		  </td>"
                         + "	  </tr>"
                         + "  </tbody>"
                         + "  </table>"
                         + "</td>";

                    //Json(new { Status = "OK", Result = list, Total = _total * 100, TotalAfterComm = TotalAfterCommission, AgcCommission = GetAfterComm, MaxSession = _MaxSession }, "application/json", JsonRequestBehavior.AllowGet);
                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        public ActionResult _LoadResult(FormCollection _m)
        {

            //var query = "";
            //var Shift = _m["Shift"];
            //var RDate = _m["RDate"];

            DataTable dt = new DataTable();
            string jsonString = string.Empty;
            jsonString = JsonConvert.SerializeObject(dt);
            List<DataRow> listtablename = dt.AsEnumerable().ToList();
            var list = new List<Dictionary<string, object>>();

            try
            {
                var sql = "sp_Load_Result_Detail";
                var RDate = DateTime.Now.ToString("yyyy-mm-dd");
                var Shift = 0;

                if (_m["RDate"] != null) { RDate = _m["RDate"]; }
                if (_m["Shift"] != null) { Shift = int.Parse(_m["Shift"]); }

                SqlParameter[] sqlParams = {    new SqlParameter("@ResultDate",RDate),
                                                new SqlParameter("@ShiftID",Shift)
                                            };

                dt = spUti.GetTableStore(sql, "myTable", sqlParams);
                var _total = 0;

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        var dict = new Dictionary<string, object>();
                        //_total += int.Parse(row["TotalAmount"].ToString());
                        foreach (DataColumn col in dt.Columns)
                        {
                            if (col.ColumnName == "ResultDate")
                            {
                                var v = Convert.ToString(row[col]);
                                dict[col.ColumnName] = DateTime.Parse(v).ToString("dd-MM");
                            }
                            else
                            {
                                dict[col.ColumnName] = (Convert.ToString(row[col]));
                            }

                        }

                        list.Add(dict);
                    }
                    return Json(new { Status = "OK", Result = list }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }

            catch (Exception ex)
            {
                return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
            }
            return Json(new { Status = "NO", Message = "Error" }, "application/json", JsonRequestBehavior.AllowGet);

        }

        public ActionResult _SaveAgencyCM(FormCollection _m)
        {
            var CurrentUser = "0";
            if (SpAuthor.getCurrentUser() != null)
            {
                CurrentUser = SpAuthor.getCurrentUser();
            }

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_SaveAgencyCommissions";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@AgencyID", _m["AgencyID"]));
                    command.Parameters.Add(new SqlParameter("@ShiftID", 1));
                    command.Parameters.Add(new SqlParameter("@S1X2", _m["S1X2"]));
                    command.Parameters.Add(new SqlParameter("@S1X3", _m["S1X3"]));
                    command.Parameters.Add(new SqlParameter("@S2X2", _m["S2X2"]));
                    command.Parameters.Add(new SqlParameter("@S2X3", _m["S2X3"]));
                    command.Parameters.Add(new SqlParameter("@RS1X2", _m["RS1X2"]));
                    command.Parameters.Add(new SqlParameter("@RS1X3", _m["RS1X3"]));
                    command.Parameters.Add(new SqlParameter("@RS2X2", _m["RS2X2"]));
                    command.Parameters.Add(new SqlParameter("@RS2X3", _m["RS2X3"]));
                    command.Parameters.Add(new SqlParameter("@ActUser", CurrentUser));

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "OK", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        protected override void Dispose(bool disposing)
        {

            base.Dispose(disposing);
        }

    }
}