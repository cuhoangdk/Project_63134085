using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using PagedList;
using Project_63134085.Models;
using WebGrease.Css.Extensions;

namespace Project_63134085.Controllers
{
    public class tDanhMucSPs_63134085Controller : Controller
    {
        private Project_63134085Entities1 db = new Project_63134085Entities1();

        // GET: tDanhMucSPs_63134085
        public ActionResult Index(int? page)
        {
			int pageSize = 8;
            int pageNumber = page==null||page<0?1:page.Value;

			var tDanhMucSPs = db.tDanhMucSPs.AsNoTracking().OrderBy(x=>x.TenSP);
            PagedList<tDanhMucSP> lst = new PagedList<tDanhMucSP>(tDanhMucSPs, pageNumber, pageSize);
            return View(lst);
        }
		public ActionResult Details(string maSp)
		{
			if (maSp == null)
			{
				return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
			}
			tDanhMucSP tDanhMucSP = db.tDanhMucSPs.Find(maSp);
			var sanPham = db.tDanhMucSPs.SingleOrDefault(x => x.MaSP == maSp);
			var anhSanPham = db.tAnhSPs.Where(x => x.MaSP == maSp).ToList();
			ViewBag.anhSanPham = anhSanPham;
			if (tDanhMucSP == null)
			{
				return HttpNotFound();
			}
			return View(tDanhMucSP);
		}
		public ActionResult SanPhamTheoLoai(string maloai, int? page)
        {
			ViewBag.maloai = maloai;
			int pageSize = 8;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var tDanhMucSPs = db.tDanhMucSPs.AsNoTracking().Where(x=>x.MaLoai==maloai).OrderBy(x => x.TenSP);
			PagedList<tDanhMucSP> lst = new PagedList<tDanhMucSP>(tDanhMucSPs, pageNumber, pageSize);            
			return View(lst);
		}
        public ActionResult TimKiem(string TuKhoa, int? page)
		{			
			int pageSize = 8;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var ketqua = db.tDanhMucSPs.AsNoTracking().Where(m => m.TenSP.ToLower().Contains(TuKhoa.ToLower())).ToList();			
			ViewBag.TuKhoa = TuKhoa;
			if (ketqua.Count == 0)
			{
				ViewBag.noti = "Không có kết quả phù hợp với từ khóa " + "\"" + TuKhoa + "\"";
			}
			PagedList<tDanhMucSP> kq = new PagedList<tDanhMucSP>(ketqua, pageNumber, pageSize);
			return View(kq);
		}		
	}
}
