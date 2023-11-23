using Project_63134085.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Project_63134085.Models.Authentication;
using System.Web.Helpers;

namespace Project_63134085.Areas.Admin.Controllers
{
    public class Access_63134085Controller : Controller
    {
		Project_63134085Entities1 _db = new Project_63134085Entities1();		
		public ActionResult Login()
		{
			var admin = Session_63134085.GetAdmin();
			if (admin != null)
			{
				return RedirectToAction("Dashboard", "Admin_63134085");
			}
			return View();
		}
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult Login(string username, string password)
		{			
			var f_password = GetMD5(password);
			mapTaiKhoan_63134085 map = new mapTaiKhoan_63134085();
			var user = map.TimKiemAdmin(username, f_password);
			var data = _db.tNhanViens.Where(s => s.username == username).ToList();
			if (user != null)
			{
				Session_63134085.SetAdmin(user);
				Session["FullName"] = data.FirstOrDefault().TenNhanVien;
				Session["ChucVu"] = data.FirstOrDefault().ChucVu;
				return RedirectToAction("Dashboard", "Admin_63134085", new { area = "Admin" });
			}				
			ViewBag.error = "Tên đăng nhập hoặc mật khẩu không đúng";
			return View();
		}
		//Logout
		public ActionResult Logout()
		{
			Session.Clear();//remove session
			return RedirectToAction("Login");
		}
		public static string GetMD5(string str)
		{
			MD5 md5 = new MD5CryptoServiceProvider();
			byte[] fromData = Encoding.UTF8.GetBytes(str);
			byte[] targetData = md5.ComputeHash(fromData);
			string byte2String = null;

			for (int i = 0; i < targetData.Length; i++)
			{
				byte2String += targetData[i].ToString("x2");

			}
			return byte2String;
		}

	}
}