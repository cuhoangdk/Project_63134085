using Project_63134085.Models.Authentication;
using Project_63134085.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Controllers
{
    public class AccessUser_63134085Controller : Controller
    {
		Project_63134085Entities1 _db = new Project_63134085Entities1();
		string LayMaKH()
		{
			var maMax = _db.tKhachHangs.ToList().Select(n => n.MaKhanhHang).Max();
			int maKH = int.Parse(maMax.Substring(2)) + 1;
			string KH = String.Concat("0000", maKH.ToString());
			return "KH" + KH.Substring(maKH.ToString().Length - 1);
		}
		public ActionResult Register()
		{
			return View();
		}
		//POST: Register
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult Register(tKhachHang _user)
		{
			if (ModelState.IsValid)
			{
				var check = _db.tKhachHangs.FirstOrDefault(s => s.username == _user.username);				
				if (check == null)
				{					
					_user.password = GetMD5(_user.password);
					_db.Configuration.ValidateOnSaveEnabled = false;
					_user.MaKhanhHang = LayMaKH();
					_db.tKhachHangs.Add(_user);
					_db.SaveChanges();
					return RedirectToAction("Login");
				}
				else
				{
					ViewBag.error = "Tài khoản đã tồn tại";
					return View();
				}
			}
			return View();
		}
		public ActionResult Login()
		{
			var user = Session_63134085.GetUser();
			if (user != null)
			{
				return RedirectToAction("Index", "tDanhMucSPs_63134085");
			}
			return View();
		}
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult Login(string username, string password)
		{
			var f_password = GetMD5(password);
			mapTaiKhoan_63134085 map = new mapTaiKhoan_63134085();
			var user = map.TimKiemUser(username, f_password);
			var data = _db.tKhachHangs.Where(s => s.username == username).ToList();
			if (user != null)
			{
				Session_63134085.SetUser(user);
				Session["FullName"] = data.FirstOrDefault().TenKhachHang;
				return RedirectToAction("Index", "tDanhMucSPs_63134085");
			}
			ViewBag.error = "Tên đăng nhập hoặc mật khẩu không đúng";
			return View();
		}
		//Logout
		public ActionResult Logout()
		{
			Session.Clear();//remove session
			return RedirectToAction("Index", "tDanhMucSPs_63134085");
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