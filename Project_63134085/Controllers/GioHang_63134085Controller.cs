using Project_63134085.Models;
using Project_63134085.Models.Authentication;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Controllers
{
    public class GioHang_63134085Controller : Controller
	{
		// GET: GioHang_63134085
		tKhachHang user = Session_63134085.GetUser();
		[User_63134085]
		public ActionResult Index()
		{
			mapGioHang_63134085 map = new mapGioHang_63134085();
			var GioHang = map.GetGioHang(user.MaKhanhHang);
			ViewBag.dsSP = map.GetChiTietGioHang(GioHang.MaGioHang);
			return View(GioHang);
		}

		[User_63134085]
		[HttpPost]
		public ActionResult ThemVaoGioHang(string idSP, int SoLuong)
		{
			mapGioHang_63134085 map = new mapGioHang_63134085();
			map.ThemVaoGioHang(map.GetGioHang(user.MaKhanhHang).MaGioHang, idSP, SoLuong);
			return RedirectToAction("Index");
		}

		[User_63134085]
		[HttpPost]
		public ActionResult XoaSanPham(string idSP)
		{
			mapGioHang_63134085 map = new mapGioHang_63134085();
			if (map.XoaSanPham(map.GetGioHang(user.MaKhanhHang).MaGioHang, idSP))
			{
				return RedirectToAction("Index");

			}
			return RedirectToAction("index", "tDanhMucSPs_63134085");

		}
	}
}