using Project_63134085.Models.Authentication;
using Project_63134085.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace Project_63134085.Areas.Admin.Controllers
{
    public class DonHangAdmin_63134085Controller : Controller
    {
		[Admin_63134085]
		public ActionResult DanhSach(string selected, int? page)
		{
			int pageSize = 20;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			mapDonHang_63134085 map = new mapDonHang_63134085();
			var ds = map.DanhSach();
			PagedList<tHoaDonBan> lst = new PagedList<tHoaDonBan>(ds, pageNumber, pageSize);
			return View(lst);
		}
		[Admin_63134085]
		public ActionResult ChiTietDonHang(string id)
		{
			mapDonHang_63134085 map = new mapDonHang_63134085();

			return View(map.GetChiTiet(id));
		}
		[Admin_63134085]
		public ActionResult XacNhanGiaoThanhCong(string id)
		{
			mapDonHang_63134085 map = new mapDonHang_63134085();
			map.SetTrangThaiDonHangThanhCong(id);
			return Redirect("/admin/DonHangAdmin_63134085/danhsach");
		}
		public ActionResult XacNhanGiaoThatBai(string id)
		{
			mapDonHang_63134085 map = new mapDonHang_63134085();
			map.SetTrangThaiDonHangThatBai(id);
			return Redirect("/admin/DonHangAdmin_63134085/danhsach");
		}
	}
}