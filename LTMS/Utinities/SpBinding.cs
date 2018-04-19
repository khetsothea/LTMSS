using LTMS.Models.Lotteries;
using LTMS.Properties;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTMS.Utinities
{
    public  class SpBinding
    {

        private  LottieModels spContext;
        public SpBinding()
        {

        }

        private LottieModels db = new LottieModels();
        public static string connect = Settings.Default.Conn;
        //private object id;

        // GET: UtinitiesHelper
        //public HttpNotFoundResult Index()
        //{
        //    return "";
        //}
        [HttpPost]
        public JsonResult _getOptionList(int? id, string jObjects, string fValue, string fDisplay, string fOption)
        {
            string sql = "select * from " + jObjects;
            if (id != null)
            {
                sql += " where " + fOption + " = " + id;
            }

            return getList(sql, fValue, fDisplay);
        }

        public JsonResult _getOptionListByKey(int? id, string jObjects, string fValue, string fDisplay, string fOption)
        {
            string sql = "select * from " + jObjects;
            if (id != null)
            {
                sql += " where " + fOption + " = " + id;
            }

            return getList(sql, fValue, fDisplay);

        }
        public JsonResult _getOptionListByKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType)
        {


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            if (id != null)
            {
                sql += " where " + fOption + " = " + id;
            }
            if (fOrder != null)
            {
                _OrderBy = " order by " + fOrder + " " + OrderType;
                sql += _OrderBy;
            }

            return getList(sql, fValue, fDisplay);

        }

        public JsonResult _getOptionListSelectedByUserIDKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType, int? vselected)
        {
            //var pro_code = Session["ProvinceCode"];


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            //if (id != null)
            //{
            //sql += " where ProvinceCode = " + pro_code;
            //}
            if (fOrder != null)
            {
                _OrderBy = " order by " + fOrder + " " + OrderType;
                sql += _OrderBy;
            }

            return getList(sql, fValue, fDisplay, vselected);

        }

        public JsonResult _getOptionListDistByUserLogKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType, int? vselected)
        {
            //var pro_code = Session["ProvinceCode"];


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            //if (id != null)
            //{
            //sql += " where ProvinceCode = " + pro_code;
            //}
            if (fOrder != null)
            {
                _OrderBy = " order by " + fOrder + " " + OrderType;
                sql += _OrderBy;
            }

            return getList(sql, fValue, fDisplay, vselected);

        }
        public JsonResult _getOptionListSelectedByKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType, int? vselected)
        {


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            if (id != null)
            {
                sql += " where " + fOption + " = " + id;
            }
            if (fOrder != null)
            {
                _OrderBy = " order by " + fOrder + " " + OrderType;
                sql += _OrderBy;
            }

            return getList(sql, fValue, fDisplay, vselected);

        }
        private JsonResult getList(string sql, string p_ValueField, string p_DisplayField)
        {
            //budget

            //string connect = Settings.Default.AMISConn;//ConfigurationManager.ConnectionStrings["AMISConn"].ConnectionString;

            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))

            {
                try
                {
                    command.CommandText = sql;
                    SqlDataAdapter dp = new SqlDataAdapter(command);
                    dp.Fill(dt);
                    //return dt.Rows[0][0].ToString();
                    var list = new List<Object>();

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        list.Add(new
                        {
                            value = dt.Rows[i][p_ValueField].ToString(),
                            text = dt.Rows[i][p_DisplayField].ToString()
                        });
                    }

                    return Json(new SelectList(list.AsEnumerable(), "value", "text"), JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    var list = new List<Object>();


                    list.Add(new
                    {
                        value = "Message",
                        text = sql + ex.ToString()
                    });

                    return Json(new SelectList(list.AsEnumerable(), "value", "text"), JsonRequestBehavior.AllowGet);
                }

            }

        }

        private JsonResult Json(SelectList selectList, JsonRequestBehavior allowGet)
        {
            throw new NotImplementedException();
        }

        private JsonResult getList(string sql, string p_ValueField, string p_DisplayField, int? vselected)
        {
            //budget

            //string connect = Settings.Default.AMISConn;//ConfigurationManager.ConnectionStrings["AMISConn"].ConnectionString;

            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))

            {
                try
                {
                    command.CommandText = sql;
                    SqlDataAdapter dp = new SqlDataAdapter(command);
                    dp.Fill(dt);
                    //return dt.Rows[0][0].ToString();
                    var list = new List<Object>();

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        list.Add(new
                        {
                            value = dt.Rows[i][p_ValueField].ToString(),
                            text = dt.Rows[i][p_DisplayField].ToString()
                        });
                    }

                    return Json(new SelectList(list.AsEnumerable(), "value", "text", vselected), JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    var list = new List<Object>();


                    list.Add(new
                    {
                        value = "Message",
                        text = sql + ex.ToString()
                    });

                    return Json(new SelectList(list.AsEnumerable(), "value", "text"), JsonRequestBehavior.AllowGet);
                }

            }

        }

        public JsonResult _GetProjetLIstByID(string id, string fObject, string fOption)
        {
            //  tblProject db = new tblProject();
            var sql = "select * from " + fObject + " where " + fOption + " = '" + id + "'";

            //var result = from r in db.tblProjects
            //             select new { r.PROID, r.ProjectName };
            //return Json(result, JsonRequestBehavior.AllowGet);
            //budget

            //string connect = ConfigurationManager.ConnectionStrings["AMISConn"].ConnectionString;
            DataTable dt = new DataTable("Result");

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))

            {
                try
                {
                    command.CommandText = sql;
                    SqlDataAdapter dp = new SqlDataAdapter(command);
                    dp.Fill(dt);
                    //return dt.Rows[0][0].ToString();
                    var list = new List<Object>();

                    foreach (DataRow dr in dt.Rows)
                    {
                        //foreach (DataColumn dc in dt.Columns)
                        // {
                        list.Add(dr);
                        //}

                    }
                    return Json(list.AsEnumerable());
                }
                catch (Exception ex)
                {
                    var list = new List<Object>();


                    list.Add(new
                    {
                        value = "Message",
                        text = sql + ex.ToString()
                    });

                    return Json(new SelectList(list.AsEnumerable(), "value", "text"), JsonRequestBehavior.AllowGet);
                }

            }
        }

        public static DataTable GetTableStore(string _sql,string TableName= "TableResult",SqlParameter[] sqlParam=null)
        {
            var sql = _sql;
            DataTable dt = new DataTable(TableName);

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))

            {
                try
                {
                    command.CommandText = sql;
                    command.CommandType = CommandType.StoredProcedure;
                    if (sqlParam != null)
                    {
                        command.Parameters.AddRange(sqlParam);
                    }

                    SqlDataAdapter dp = new SqlDataAdapter(command);
                    dp.Fill(dt);
                   // return dt;
                }
                catch (Exception ex)
                {

                    //return dt;
                }
                return dt;


            }
        }

        private JsonResult Json(IEnumerable<object> enumerable)
        {
            throw new NotImplementedException();
        }
    }
}