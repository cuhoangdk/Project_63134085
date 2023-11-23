using Project_63134085.Models;
using Project_63134085.Models.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Controllers
{
    public class ThanhToan_63134085Controller : Controller
    {
		tKhachHang user = Session_63134085.GetUser();
		// GET: ThanhToan

		[User_63134085]
		public ActionResult ThanhToan(string GhiChuDonHang, tHoaDonBan model)
		{
			mapKhachHang_63134085 map = new mapKhachHang_63134085();
			mapGioHang_63134085 mapGH = new mapGioHang_63134085();
			var kh = map.GetChiTiet(user.MaKhanhHang);
			ViewBag.dsSP = mapGH.GetChiTietGioHang(mapGH.GetGioHang(kh.MaKhanhHang).MaGioHang);
			ViewBag.Tong = mapGH.GetGioHang(user.MaKhanhHang).TongTienHD;
			ViewBag.GhiChuDonHang = GhiChuDonHang;					
			return View(kh);
		}
		[User_63134085]
		[HttpPost]
		public ActionResult ThanhToan(tHoaDonBan model)
		{
			mapGioHang_63134085 mapGH = new mapGioHang_63134085();
			mapDonHang_63134085 mapDH = new mapDonHang_63134085();
			mapDH.ThemDonHang(user.MaKhanhHang, mapGH.GetGioHang(user.MaKhanhHang).MaGioHang, model.DienThoai, model.Ten, model.GhiChu, model.DiaChi);
			return RedirectToAction("ThanhToanThanhCong");
		}
		[User_63134085]
		public ActionResult ThanhToanThanhCong()
		{
			return View();
		}
	}
}