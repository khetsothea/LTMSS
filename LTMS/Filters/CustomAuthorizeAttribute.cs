using LTMS.Models.Lotteries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace LTMS.Filters
{
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class, Inherited = true, AllowMultiple = true)]
    public class CustomAuthorizeAttribute : AuthorizeAttribute, IAuthorizationFilter
    {
        LottieModels context = new LottieModels(); // my entity  
        private readonly string[] allowedroles;
        public CustomAuthorizeAttribute(params string[] roles)
        {
            this.allowedroles = roles;
        }
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            bool authorize = false;
            //var _CurrentUser = "Jack";
            var _CurrentUserID = GetCurrentLoginUser();

            foreach (var role in allowedroles)
            {
                /* getting user form current context */
                //var user = context.Users.Where(m => m.UserId == GetUser.CurrentUser && m.Role == role &&
                var user = context.Users.Where(m => m.UserId.ToString() == _CurrentUserID); // checking active users with allowed roles.  
                if (user.Count() > 0)
                {
                    authorize = true; /* return true if Entity has current user(active) with specific role */
                }
            }

            if (!string.IsNullOrEmpty(GetCurrentLoginUser()))
            {
                authorize = true; /* return true if Entity has current user(active) with specific role */

            }

            return authorize;
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            filterContext.Result = new HttpUnauthorizedResult();
        }

        public string GetCurrentLoginUser()
        {
            using (context) // use your DbConext
            {
                // if your users set name is Users
                //var _UserID = Session["UserID"];

                string _UserID = HttpContext.Current.Session["UserId"] as string;

                //var _UserName = HttpContext.Current.Session["UserName"].ToString();

                return _UserID;
            }
        }
    }
}