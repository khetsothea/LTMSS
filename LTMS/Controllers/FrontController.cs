using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LTMS.Models.Lotteries;
using System.Data;
using Newtonsoft.Json;
using LTMS.Filters;
using LTMS.Utinities;
using System.Collections;

namespace LTMS.Controllers
{
    [CustomAuthorizeAttribute]
    public class FrontController : Controller
    {
        // GET: Font
        private LottieModels db = new LottieModels();
        string connect = Properties.Settings.Default.Conn;
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Clients()
        {
            return View();
        }
        // GET: Font/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        public ActionResult _save(FormCollection _m)
        {
            var CurrentUser = "0";

            if (SpAuthor.getCurrentUser() != null)
            {
                CurrentUser = SpAuthor.getCurrentUser();
            }
            var spShift = "0";
           if ( _m["Shift"]!=null)
            {
                spShift = _m["Shift"];
            }
            SqlParameter[] sqlparams = {
                    new SqlParameter("@ShiftId",spShift)
                    , new SqlParameter("@ClientDate",DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"))
            };

            DataTable dtShift = SpBinding.GetTableStore("sp_checkShift", "checkShift", sqlparams);

            if (dtShift==null || dtShift.Rows.Count <= 0)
            {
                return Json(new { Status = "NO", Result = "ពេលបិទហើយមិនអាចចាក់បានទេ!..", Message = "ពេលបិទហើយមិនអាចចាក់បានទេ!.." }, "application/json", JsonRequestBehavior.AllowGet);
            }

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    int PlayType = int.Parse(_m["PlayType"]);
                    string Number = _m["Number"];
                    string Number1 = "";
                    if (PlayType == 2)
                    {
                        Number1 = _m["Number1"];
                    }
                    int NumIncreaseDig = 1;
                    #region Play Type Oy

                    if (PlayType == 2) //លេងអូស
                    {
                        if (Number.Length > 2) // 3 Digit
                        {
                            int d1 = int.Parse(Number.Substring(0, 1));
                            int d2 = int.Parse(Number.Substring(1, 1));
                            int d3 = int.Parse(Number.Substring(2, 1));

                            int n1 = int.Parse(Number1.Substring(0, 1));
                            int n2 = int.Parse(Number1.Substring(1, 1));
                            int n3 = int.Parse(Number1.Substring(2, 1));

                            if ((n1 == n2 ) && (n1 == n3))
                            {
                                _m["Number"] = d1.ToString() + d1.ToString() + d1.ToString();
                                //NumIncreaseDig = 4;
                                var _iNum = (n1 - d1) + 1;
                                _m["NumIncrease"] = _iNum.ToString();
                            }
                            else if (d1 != n1)
                            {
                                NumIncreaseDig = 1;
                                //_m["Number1"] = d1.ToString() + Number.Substring(1, 2);

                            }
                            else if (d2 != n2)//Second Digit cannot Increase
                            {
                                NumIncreaseDig = 1;
                                //_m["Number1"] = d1.ToString() + Number.Substring(1, 2);
                            }
                            else if (d3 != n3)
                            {
                                //_m["Number1"] = Number.Substring(0, 2) + d3.ToString();
                                NumIncreaseDig = 3;
                            }


                        }
                        else
                        {
                            int d1 = int.Parse(Number.Substring(0, 1));
                            int d2 = int.Parse(Number.Substring(1, 1));
                            //int d3 = int.Parse(Number.Substring(3, 1));

                            int n1 = int.Parse(Number1.Substring(0, 1));
                            int n2 = int.Parse(Number1.Substring(1, 1));
                            //int n3 = int.Parse(Number1.Substring(3, 1));

                            if (n1 == n2)
                            {
                                NumIncreaseDig = 4;
                                d2 = d1;
                                _m["Number"] = Number.Substring(0, 1) + d2.ToString();
                                _m["NumIncrease"] = ((n1 - d1)+1).ToString();

                            }
                           else if (d1 != n1)
                            {
                                NumIncreaseDig = 1;
                                _m["Number"] = d1.ToString() + Number.Substring(1, 1);
                            }

                            else if (d2 != n2)
                            {
                                NumIncreaseDig = 2;
                                _m["Number"] = Number.Substring(0, 1) + d2.ToString();
                            }
                        }
                    }
                    #endregion

                    command.CommandText = "sp_SavePlay";
                    Console.WriteLine(_m["Number1"].ToString());
                    //string a = "";
                    //a = _m["Number1"].ToString();
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@PlayID", SqlDbType.Int));
                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"]));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"]));
                    command.Parameters.Add(new SqlParameter("@CustomerID", _m["CustomerID"]));
                    command.Parameters.Add(new SqlParameter("@CreaterID", CurrentUser));
                    command.Parameters.Add(new SqlParameter("@Post", _m["Post"]));
                    command.Parameters.Add(new SqlParameter("@Number", _m["Number"]));
                    command.Parameters.Add(new SqlParameter("@Number1", _m["Number1"].ToString()));
                    command.Parameters.Add(new SqlParameter("@NumIncrease", _m["NumIncrease"]));
                    command.Parameters.Add(new SqlParameter("@NumIncreaseDig", NumIncreaseDig));
                    command.Parameters.Add(new SqlParameter("@PostMultiplier", _m["Multiplier"]));
                    command.Parameters.Add(new SqlParameter("@PlayTypeMultiplier", _m["PlayTypeMultiplier"]));
                    command.Parameters.Add(new SqlParameter("@PlayType", _m["PlayType"]));
                    command.Parameters.Add(new SqlParameter("@PlayAmount", _m["PlayAmount"]));
                    command.Parameters.Add(new SqlParameter("@Status", 1));
                    //command.Parameters.Add(new SqlParameter("@Date", 1));
                    command.Parameters[0].Direction = ParameterDirection.Output;

                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    int PlayID = 0;
                    var i = command.ExecuteNonQuery();
                    if (i > 0)
                    {
                         PlayID = int.Parse(command.Parameters[0].Value.ToString());
                    }
                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    if (PlayID > 0)
                    {
                        PlayDetail(PlayID,int.Parse(_m["Shift"]),int.Parse(_m["PlayType"]), _m["Post"], _m["Number"], _m["Number1"], decimal.Parse(_m["PlayAmount"]));
                    }

                    return Json(new { Status = "OK" ,Result="", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        private void spExStor(int PlayID, string Post,string Number, decimal PlayAmount)
        {
            using (SqlConnection connection = new SqlConnection(connect))
            {
                using (SqlCommand command = new SqlCommand("", connection))
                {
                    try

                    {
                        command.CommandText = "sp_AddPlayDetail";
                        command.CommandType = CommandType.StoredProcedure;
                        command.Connection = connection;
                        command.Parameters.Add(new SqlParameter("@PlayID", PlayID));
                        command.Parameters.Add(new SqlParameter("@Post", Post));
                        command.Parameters.Add(new SqlParameter("@Number", Number));
                        command.Parameters.Add(new SqlParameter("@PlayAmount", PlayAmount));
                        if (connection.State != ConnectionState.Open)
                        {
                            connection.Open();
                        }
                        var i = command.ExecuteNonQuery();

                        if (connection.State != ConnectionState.Closed)
                        {
                            connection.Close();
                        }
                    }
                    catch (Exception ex)
                    {

                    }

                }
            }
        }
        private void PlayDetail(int PID=0,int Shift = 1, int PlayType = 1, string POST = "", string PlayNum = "", string PlayNum1 = "", decimal PlayAmount = 0)
        {
            ArrayList ListPOS = new ArrayList();
            string POS = POST;
            #region Shift=1
            if (Shift == 1)
            {
                #region PlayAfternoon
                for (int ii = 0; ii < POS.Length; ii++)
                {
                    ListPOS.Add(POS.Substring(ii, 1));
                }

                if (PlayType == 1)
                {
                    for (int i = 0; i < ListPOS.Count; i++)
                    {
                        //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                        spExStor(PID, ListPOS[i].ToString(),  PlayNum, PlayAmount);
                    }
                }
                else if (PlayType == 5)
                {
                    string d1 = "", d2 = "", d3 = "";
                    if (PlayNum.Length > 2)
                    {
                        d1 = PlayNum.Substring(0, 1);
                        d2 = PlayNum.Substring(1, 1);
                        d3 = PlayNum.Substring(2, 1);

                        for (int i = 0; i < ListPOS.Count; i++)
                        {
                            //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                            if ((d1 == d2) && (d1 == d3))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(), PlayNum, PlayAmount);
                            }
                            else if ((d1 != d2) && (d1 != d3) && ((d2 != d3)))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + d3 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(), (d1 + d2 + d3), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(), (d1 + d3 + d2), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(), (d2 + d3 + d1), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(), (d2 + d1 + d3), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d3 + d1 + d2), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d3 + d2 + d1), PlayAmount);


                            }
                            else if ((d1 == d2) && (d1 != d3))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d2 + "= ៛" + PlayAmount + "\n";

                                spExStor(PID, ListPOS[i].ToString(),  (d2 + d2 + d3), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d2 + d3 + d2), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d3 + d2 + d2), PlayAmount);
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                            }
                            else if ((d1 == d3) && (d1 != d2))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d3 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d3 + "= ៛" + PlayAmount + "\n";

                                spExStor(PID, ListPOS[i].ToString(),  (d3 + d3 + d2), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d2 + d3 + d3), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d3 + d2 + d3), PlayAmount);
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                            }
                            else if ((d2 == d3) && (d1 != d2))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + d2 + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(),  (d2 + d3 + d1), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d2 + d1 + d3), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(),  (d1 + d2 + d3), PlayAmount);
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                            }
                        }


                    }
                    else if (PlayNum.Length > 0 && PlayNum.Length == 2)//Play Oy
                    {
                        d1 = PlayNum.Substring(0, 1);
                        d2 = PlayNum.Substring(1, 1);
                        //d3 = PlayNum.Substring(2, 1);

                        for (int i = 0; i < ListPOS.Count; i++)
                        {
                            //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                            if ((d1 == d2))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(), (PlayNum), PlayAmount);
                            }
                            else if ((d1 != d2))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(), (d1 + d2 ), PlayAmount);
                                spExStor(PID, ListPOS[i].ToString(), (d2 + d1 + d1), PlayAmount);

                            }
                        }
                    }
                }
                else if (PlayType == 2)
                {
                    if (PlayNum.Length > 2)
                    {
                        string n, n1, n2, n3;
                        string d, d1, d2, d3;

                        d1 = PlayNum.Substring(0, 1);
                        d2 = PlayNum.Substring(1, 1);
                        d3 = PlayNum.Substring(2, 1);

                        n1 = PlayNum1.Substring(0, 1);
                        n2 = PlayNum1.Substring(1, 1);
                        n3 = PlayNum1.Substring(2, 1);

                        for (int i = 0; i < ListPOS.Count; i++)
                        {
                            // this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                            if ((d1 == n1) && (d2 == n2) && (d3 == n3))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(),  (PlayNum), PlayAmount);
                            }
                            else if ((n1 == n2) && (n2 == n3))
                            {
                                d2 = d1;
                                d3 = d1;
                                for (int ii = int.Parse(d3); ii <= int.Parse(n3); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (ii.ToString() + ii.ToString() + ii.ToString()), PlayAmount);
                                }
                            }
                            else if ((d1 == n1) && (d2 == n2) && (d3 != n3))
                            {
                                for (int ii = int.Parse(d3); ii <= int.Parse(n3); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(),  (d1 + d2 + ii.ToString()), PlayAmount);
                                }
                            }
                            else if ((d1 == n1) && (d2 != n2) && (d3 == n3))
                            {
                                for (int ii = int.Parse(d2); ii <= int.Parse(n2); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + ii.ToString() + d3 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(),  (d1 + ii.ToString() + d2 ), PlayAmount);
                                }
                            }
                            else if ((d1 != n1) && (d2 == n2) && (d3 == n3))
                            {
                                for (int ii = int.Parse(d1); ii <= int.Parse(n1); ii++)
                                {
                                    // this.richTextBox1.Text += ListPOS[i] + "= " + ii.ToString() + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(),  (ii.ToString() +d1 +  d2), PlayAmount);
                                }
                            }


                        }
                    }
                    else
                    {
                        string n, n1, n2;
                        string d, d1, d2;

                        d1 = PlayNum.Substring(0, 1);
                        d2 = PlayNum.Substring(1, 1);

                        n1 = PlayNum1.Substring(0, 1);
                        n2 = PlayNum1.Substring(1, 1);

                        for (int i = 0; i < ListPOS.Count; i++)
                        {

                            if ((d1 == n1) && (d2 == n2))
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                spExStor(PID, ListPOS[i].ToString(),  (PlayNum), PlayAmount);
                            }
                            else if (n1 == n2)
                            {
                                d2 = d1;
                                for (int ii = int.Parse(d2); ii <= int.Parse(n2); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (ii.ToString() + ii.ToString()), PlayAmount);
                                }
                            }
                            else if ((d1 == n1) && (d2 != n2))
                            {
                                for (int ii = int.Parse(d2); ii <= int.Parse(n2); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(),  (d1 + ii.ToString() ), PlayAmount);
                                }
                            }
                            else if ((d1 != n1) && (d2 == n2))
                            {
                                for (int ii = int.Parse(d1); ii <= int.Parse(n1); ii++)
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + ii.ToString() + d2 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(),  (ii.ToString() + d1), PlayAmount);
                                }
                            }


                        }
                    }
                }
                #endregion
            }
            #endregion
            else if (Shift == 2)
            {
                if(POST!="A1" || POS != "A2" || POS != "A3" || POS != "A4")
                {
                    #region PlayEvening POST!="A1" || POS != "A2" || POS != "A3" || POS != "A4"
                    for (int ii = 0; ii < POS.Length; ii++)
                    {
                        ListPOS.Add(POS.Substring(ii, 1));
                    }

                    if (PlayType == 1)
                    {
                        for (int i = 0; i < ListPOS.Count; i++)
                        {
                            //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                            spExStor(PID, ListPOS[i].ToString(), PlayNum, PlayAmount);
                        }
                    }
                    else if (PlayType == 5)
                    {
                        string d1 = "", d2 = "", d3 = "";
                        if (PlayNum.Length > 2)
                        {
                            d1 = PlayNum.Substring(0, 1);
                            d2 = PlayNum.Substring(1, 1);
                            d3 = PlayNum.Substring(2, 1);

                            for (int i = 0; i < ListPOS.Count; i++)
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                                if ((d1 == d2) && (d1 == d3))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), PlayNum, PlayAmount);
                                }
                                else if ((d1 != d2) && (d1 != d3) && ((d2 != d3)))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + d3 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (d1 + d2 + d3), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d1 + d3 + d2), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d3 + d1), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d1 + d3), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d3 + d1 + d2), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d3 + d2 + d1), PlayAmount);


                                }
                                else if ((d1 == d2) && (d1 != d3))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d2 + "= ៛" + PlayAmount + "\n";

                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d2 + d3), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d3 + d2), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d3 + d2 + d2), PlayAmount);
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                }
                                else if ((d1 == d3) && (d1 != d2))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d3 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d3 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d3 + "= ៛" + PlayAmount + "\n";

                                    spExStor(PID, ListPOS[i].ToString(), (d3 + d3 + d2), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d3 + d3), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d3 + d2 + d3), PlayAmount);
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                }
                                else if ((d2 == d3) && (d1 != d2))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + d2 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d3 + d1), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d1 + d3), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d1 + d2 + d3), PlayAmount);
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d3 + d1 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d3 + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                }
                            }


                        }
                        else if (PlayNum.Length > 0 && PlayNum.Length == 2)
                        {
                            d1 = PlayNum.Substring(0, 1);
                            d2 = PlayNum.Substring(1, 1);
                            //d3 = PlayNum.Substring(2, 1);

                            for (int i = 0; i < ListPOS.Count; i++)
                            {
                                //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                                if ((d1 == d2))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (PlayNum), PlayAmount);
                                }
                                else if ((d1 != d2))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + "= ៛" + PlayAmount + "\n";
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + d2 + d1 + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (d1 + d2), PlayAmount);
                                    spExStor(PID, ListPOS[i].ToString(), (d2 + d1 + d1), PlayAmount);

                                }
                            }
                        }
                    }
                    else if (PlayType == 2)
                    {
                        if (PlayNum.Length > 2)
                        {
                            string n, n1, n2, n3;
                            string d, d1, d2, d3;

                            d1 = PlayNum.Substring(0, 1);
                            d2 = PlayNum.Substring(1, 1);
                            d3 = PlayNum.Substring(2, 1);

                            n1 = PlayNum1.Substring(0, 1);
                            n2 = PlayNum1.Substring(1, 1);
                            n3 = PlayNum1.Substring(2, 1);
                            for (int i = 0; i < ListPOS.Count; i++)
                            {
                                // this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";

                                if ((d1 == n1) && (d2 == n2) && (d3 == n3))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (PlayNum), PlayAmount);
                                }
                                else if ((d1 == n1) && (d2 == n2) && (d3 != n3))
                                {
                                    for (int ii = int.Parse(d3); ii <= int.Parse(n3); ii++)
                                    {
                                        //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + d2 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                        spExStor(PID, ListPOS[i].ToString(), (d1 + d2 + ii.ToString()), PlayAmount);
                                    }
                                }
                                else if ((d1 == n1) && (d2 != n2) && (d3 == n3))
                                {
                                    for (int ii = int.Parse(d2); ii <= int.Parse(n2); ii++)
                                    {
                                        //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + ii.ToString() + d3 + "= ៛" + PlayAmount + "\n";
                                        spExStor(PID, ListPOS[i].ToString(), (d1 + ii.ToString() + d2), PlayAmount);
                                    }
                                }
                                else if ((d1 != n1) && (d2 == n2) && (d3 == n3))
                                {
                                    for (int ii = int.Parse(d1); ii <= int.Parse(n1); ii++)
                                    {
                                        // this.richTextBox1.Text += ListPOS[i] + "= " + ii.ToString() + d2 + d3 + "= ៛" + PlayAmount + "\n";
                                        spExStor(PID, ListPOS[i].ToString(), (ii.ToString() + d1 + d2), PlayAmount);
                                    }
                                }


                            }
                        }
                        else
                        {
                            string n, n1, n2;
                            string d, d1, d2;

                            d1 = PlayNum.Substring(0, 1);
                            d2 = PlayNum.Substring(1, 1);

                            n1 = PlayNum1.Substring(0, 1);
                            n2 = PlayNum1.Substring(1, 1);

                            for (int i = 0; i < ListPOS.Count; i++)
                            {

                                if ((d1 == n1) && (d2 == n2))
                                {
                                    //this.richTextBox1.Text += ListPOS[i] + "= " + PlayNum + "= ៛" + PlayAmount + "\n";
                                    spExStor(PID, ListPOS[i].ToString(), (PlayNum), PlayAmount);
                                }
                                else if ((d1 == n1) && (d2 != n2))
                                {
                                    for (int ii = int.Parse(d2); ii <= int.Parse(n2); ii++)
                                    {
                                        //this.richTextBox1.Text += ListPOS[i] + "= " + d1 + ii.ToString() + "= ៛" + PlayAmount + "\n";
                                        spExStor(PID, ListPOS[i].ToString(), (d1 + ii.ToString()), PlayAmount);
                                    }
                                }
                                else if ((d1 != n1) && (d2 == n2))
                                {
                                    for (int ii = int.Parse(d1); ii <= int.Parse(n1); ii++)
                                    {
                                        //this.richTextBox1.Text += ListPOS[i] + "= " + ii.ToString() + d2 + "= ៛" + PlayAmount + "\n";
                                        spExStor(PID, ListPOS[i].ToString(), (ii.ToString() + d1), PlayAmount);
                                    }
                                }


                            }
                        }
                    }
                    #endregion

                }
            }

        }
        public ActionResult _cancelplay(FormCollection _m)
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
                    command.CommandText = "sp_CancelPlay";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@PlayID", _m["id"]));
                    //command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }
        public ActionResult _cancelplayP(FormCollection _m)
        {

            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_CancelPlayP";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    //command.Parameters.Add(new SqlParameter("@PlayID", _m["id"]));
                    command.Parameters.Add(new SqlParameter("@PlayDate", _m["PlayDate"]));
                    command.Parameters.Add(new SqlParameter("@Shift", _m["Shift"]));
                    command.Parameters.Add(new SqlParameter("@CustomerID", 1));
                    command.Parameters.Add(new SqlParameter("@Session", _m["Session"]));
                    command.Parameters.Add(new SqlParameter("@Post", _m["Post"]));
                    //command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        public ActionResult _cancelplayPD(FormCollection _m)
        {
            using (SqlConnection connection = new SqlConnection(connect))
            using (SqlCommand command = new SqlCommand("", connection))
            {
                try

                {
                    command.CommandText = "sp_CancelPlayPD";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    command.Parameters.Add(new SqlParameter("@PlayID", _m["PID"]));
                    //command.Parameters.Add(new SqlParameter("@Date", 1));
                    if (connection.State != ConnectionState.Open)
                    {
                        connection.Open();
                    }
                    var i = command.ExecuteNonQuery();

                    if (connection.State != ConnectionState.Closed)
                    {
                        connection.Close();
                    }

                    return Json(new { Status = "OK", Result = "", Message = "successfully!" }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Result = "", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }

        [HttpPost]
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

                    // var i= 0;
                    //var tpPost = "";
                    //foreach (DataRow dr in dt.Rows)
                    //{
                    //    if(tpPost== dr["Post"].ToString())
                    //    {
                    //        Console.WriteLine(i);
                    //    }
                    //    else
                    //    {
                    //        Console.WriteLine(i + tpPost);
                    //    }
                    //    tpPost = dr["Post"].ToString();
                    //}

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
                        _MaxSession= int.Parse(row["MaxSession"].ToString());
                        _AgcCommission = int.Parse(row["AgcCommission"].ToString());

                        foreach (DataColumn col in dt.Columns)
                        {
                            dict[col.ColumnName] = (Convert.ToString(row[col]));
                        }

                        list.Add(dict);
                    }
                    var GetAfterComm = 100 - _AgcCommission;
                    var TotalAfterCommission = _total * (100 - _AgcCommission);

                    return Json(new { Status = "OK", Result = list, Total = _total * 100, TotalAfterComm = TotalAfterCommission, AgcCommission= GetAfterComm, MaxSession= _MaxSession }, "application/json", JsonRequestBehavior.AllowGet);

                }

                catch (Exception ex)
                {
                    return Json(new { Status = "NO", Message = ex.Message.ToString() }, "application/json", JsonRequestBehavior.AllowGet);
                }
            }
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Font/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Font/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Font/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Font/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
