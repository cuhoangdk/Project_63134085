using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Models.Authentication
{
	public class User_63134085 : AuthorizeAttribute
	{
		public override void OnAuthorization(AuthorizationContext filterContext)
		{
			var User = (tKhachHang)HttpContext.Current.Session["user"];
			if (User == null)
			{
				//filterContext.HttpContext.Session["ReturnUrlUser"] = filterContext.HttpContext.Request.Url.PathAndQuery;
				// Điều hướng về trang đăng nhập
				filterContext.Result = new RedirectToRouteResult(
					new System.Web.Routing.RouteValueDictionary(new
					{
						Controller = "AccessUser_63134085",
						Action = "Login",
					}));
				return;
			}
			return;
		}
	}
}