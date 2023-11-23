using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Models.Authentication
{
	public class Admin_63134085 : AuthorizeAttribute
	{		
		public override void OnAuthorization(AuthorizationContext filterContext)
		{
			var Admin = (tNhanVien)HttpContext.Current.Session["admin"];
			if (Admin == null)
			{
				//filterContext.HttpContext.Session["ReturnUrlAdmin"] = filterContext.HttpContext.Request.Url.PathAndQuery;
				// Điều hướng về trang đăng nhập
				filterContext.Result = new RedirectToRouteResult(
					new System.Web.Routing.RouteValueDictionary(new
					{
						Controller = "Access_63134085",
						Action = "Login",
						area = "Admin"
					}));
				return;
			}

			return;
		}
	}
}