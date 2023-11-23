using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models.Authentication
{
	public class Session_63134085
	{
		//User
		// Lưu session cho user
		public static void SetUser(tKhachHang user)
		{
			// lưu vào session
			HttpContext.Current.Session["user"] = user;
		}

		// Lấy session
		public static tKhachHang GetUser()
		{
			// lưu vào session
			return (tKhachHang)HttpContext.Current.Session["user"];
		}

		// Amin
		public static void SetAdmin(tNhanVien admin)
		{
			// lưu vào session
			HttpContext.Current.Session["admin"] = admin;
		}

		// Lấy session
		public static tNhanVien GetAdmin()
		{
			// lưu vào session
			return (tNhanVien)HttpContext.Current.Session["admin"];
		}
	}
}