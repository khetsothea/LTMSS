using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LTMS.Models.Lotteries;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using LTMS.Properties;

namespace AMIS.Controllers
{
    public class UtiHelperController : Controller
    {
        private LottieModels db = new LottieModels();
        string connect = Settings.Default.Conn;

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

        public JsonResult _getOptionSelectedListByKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, int? fSelectValue, string OrderType)
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
            if (fSelectValue != null)
            {
                return getList(sql, fValue, fDisplay,fSelectValue);
            }

                return getList(sql, fValue, fDisplay);

        }
        public JsonResult _getOptionListSelectedByUserIDKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType, int? vselected)
        {
            var pro_code = Session["ProvinceCode"];


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            //if (id != null)
            //{
                sql += " where ProvinceCode = " + pro_code ;
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
            var pro_code = Session["ProvinceCode"];


            string sql = " select " + fValue + " ,  " + fDisplay + "  from " + jObjects;
            string _OrderBy = "";
            //if (id != null)
            //{
            sql += " where ProvinceCode = " + pro_code;
            //}
            if (fOrder != null)
            {
                _OrderBy = " order by " + fOrder + " " + OrderType;
                sql += _OrderBy;
            }

            return getList(sql, fValue, fDisplay, vselected);

        }
        public JsonResult _getOptionListSelectedByKeyOder(int? id, string jObjects, string fValue, string fDisplay, string fOption, string fOrder, string OrderType, int? vselected )
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

            return getList(sql, fValue, fDisplay,vselected);

        }

        public string GetScalar(string sql , string nullVale)
        {
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
                    if (dt.Rows.Count > 0)
                    {
                        return dt.Rows[0][0].ToString();
                    }
                    return "0";

                }
                catch (Exception ex)
                {

                }

            }
            return "0";
        }

        public string GetScalarStore(
                string spName
                , string tableName
                , SqlParameter[] Ps
                , string nullVale
            )
        {
            DataTable dt = new DataTable();
            SqlParameter[] _Ps = Ps;
            //DataTable dt = null;
            using (SqlConnection cnn = new SqlConnection(connect))
            {
                //if (cnn.State == ConnectionState.Closed) { cnn.Open(); }            //Call Stack
                using (SqlCommand cmd = cnn.CreateCommand())
                {

                    cmd.CommandText = spName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    if (_Ps != null)
                    {
                        cmd.Parameters.AddRange(_Ps);
                    }
                    using (SqlDataAdapter sqlDA = new SqlDataAdapter() { SelectCommand = cmd })
                    {
                        dt = new DataTable();
                        try
                        {
                            sqlDA.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                return dt.Rows[0][0].ToString();
                            }
                            return "0";
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("{0} Exception caught.", e);
                        }
                        if (tableName != "")
                        {
                            dt.TableName = tableName;
                        }

                    }
                    cmd.Parameters.Clear();
                }

                cnn.Close();
            }
            return "0";
        }
        public DataTable GetTable(string sql, DataTable nullVale=null)
        {
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))

            {
                try
                {
                    command.CommandText = sql;
                    SqlDataAdapter dp = new SqlDataAdapter(command);
                    dp.Fill(dt);
                }
                catch (Exception ex)
                {

                }

            }
            return dt;
        }

        public  DataTable GetTableStore(string spName, string tableName, SqlParameter[] Ps)
        {
            SqlParameter[] _Ps = Ps;
            DataTable dt = null;
            //SqlConnection connection = new SqlConnection(connect);
            //SqlConnection connection = new SqlConnection(connect)
            using (SqlConnection cnn = new SqlConnection(connect))
            {
                //if (cnn.State == ConnectionState.Closed) { cnn.Open(); }            //Call Stack
                using (SqlCommand cmd = cnn.CreateCommand())
                {

                    cmd.CommandText = spName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    if (_Ps != null)
                    {
                        cmd.Parameters.AddRange(_Ps);
                    }
                    using (SqlDataAdapter sqlDA = new SqlDataAdapter() { SelectCommand = cmd })
                    {
                        dt = new DataTable();
                        try
                        {
                            sqlDA.Fill(dt);
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("{0} Exception caught.", e);
                        }
                        if (tableName != "")
                        {
                            dt.TableName = tableName;
                        }

                    }
                    cmd.Parameters.Clear();
                }

                cnn.Close();
            }
            return dt;
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

        private JsonResult getList(string sql, string p_ValueField, string p_DisplayField,int? vselected)
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