using Project_63134085.Models;
using Project_63134085.Models.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Project_63134085.Controllers
{
    public class DonHang_63134085Controller : Controller
	{
		// GET: DonHang
		tKhachHang user = Session_63134085.GetUser();
		[User_63134085]
		public ActionResult Index()
		{
			mapDonHang_63134085 map = new mapDonHang_63134085();
			return View(map.DanhSach().Where(m => m.MaKhachHang == user.MaKhanhHang).ToList());
		}
		[User_63134085]
		// GET: DonHang/Details/5
		public ActionResult Details(string id)
		{
			if (id == null)
			{
				return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
			}
			mapDonHang_63134085 map = new mapDonHang_63134085();
			var dh = map.GetChiTiet(id);
			if (dh == null)
			{
				return HttpNotFound();
			}
			return View(dh);
		}
	}
}