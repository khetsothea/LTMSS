using LTMS.Models.Lotteries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LTMS.Utinities
{
    public static class SpAuthor
    {
       // LottieModels
        //User _user = new User();

        public static string getCurrentUser()
        {
            if (HttpContext.Current.Session["UserId"] != null)
            {
                return HttpContext.Current.Session["UserId"].ToString();
            }
            else
            {
                return null;
            }
        }

        public static string getCurrentUserName()
        {
            if (HttpContext.Current.Session["UserName"] != null)
            {
                return HttpContext.Current.Session["UserName"].ToString();
            }
            else
            {
                return "";
            }
        }
    }
}