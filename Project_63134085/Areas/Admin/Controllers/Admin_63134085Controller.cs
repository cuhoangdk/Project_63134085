using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Project_63134085.Models;
using PagedList;
using Project_63134085.Models.Authentication;

namespace Project_63134085.Areas.Admin.Controllers
{
    public class Admin_63134085Controller : Controller
    {
        private Project_63134085Entities1 db = new Project_63134085Entities1();
		[Admin_63134085]
		// GET: Admin/Admin_63134085        
		public ActionResult Index(int? page)
		{
			int pageSize = 20;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var tDanhMucSPs = db.tDanhMucSPs.AsNoTracking().OrderBy(x => x.TenSP);            
			PagedList<tDanhMucSP> lst = new PagedList<tDanhMucSP>(tDanhMucSPs, pageNumber, pageSize);			
			return View(lst);            
		}
		[Admin_63134085]
		// GET: Admin/Admin_63134085/Create
		public ActionResult Create()
        {
            ViewBag.MaChatLieu = new SelectList(db.tChatLieux, "MaChatLieu", "ChatLieu");
            ViewBag.MaHangSX = new SelectList(db.tHangSXes, "MaHangSX", "HangSX");
            ViewBag.MaDT = new SelectList(db.tLoaiDTs, "MaDT", "TenLoai");
            ViewBag.MaLoai = new SelectList(db.tLoaiSPs, "MaLoai", "Loai");
            ViewBag.MaNuocSX = new SelectList(db.tQuocGias, "MaNuoc", "TenNuoc");
            return View();
        }		
		// POST: Admin/Admin_63134085/Create
		// To protect from overposting attacks, enable the specific properties you want to bind to, for 
		// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [Admin_63134085]
		[HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSP,TenSP,MaChatLieu,NganLapTop,Model,CanNang,DoNoi,MaHangSX,MaNuocSX,MaDacTinh,Website,ThoiGianBaoHanh,GioiThieuSP,ChietKhau,MaLoai,MaDT,AnhDaiDien,GiaNhoNhat,GiaLonNhat,SoLuong")] tDanhMucSP tDanhMucSP)
        {
			//System.Web.HttpPostedFileBase Avatar;
			var img = Request.Files["Avatar"];
			//Lấy thông tin từ input type=file có tên Avatar
			string postedFileName = System.IO.Path.GetFileName(img.FileName);
			//Lưu hình đại diện về Server
			var path = Server.MapPath("../Images/" + postedFileName);
			img.SaveAs(path);
			if (ModelState.IsValid)
            {
                tDanhMucSP.AnhDaiDien = postedFileName;
                db.tDanhMucSPs.Add(tDanhMucSP);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaChatLieu = new SelectList(db.tChatLieux, "MaChatLieu", "ChatLieu", tDanhMucSP.MaChatLieu);
            ViewBag.MaHangSX = new SelectList(db.tHangSXes, "MaHangSX", "HangSX", tDanhMucSP.MaHangSX);
            ViewBag.MaDT = new SelectList(db.tLoaiDTs, "MaDT", "TenLoai", tDanhMucSP.MaDT);
            ViewBag.MaLoai = new SelectList(db.tLoaiSPs, "MaLoai", "Loai", tDanhMucSP.MaLoai);
            ViewBag.MaNuocSX = new SelectList(db.tQuocGias, "MaNuoc", "TenNuoc", tDanhMucSP.MaNuocSX);
            return View(tDanhMucSP);
        }
		[Admin_63134085]
		// GET: Admin/Admin_63134085/Edit/5
		public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tDanhMucSP tDanhMucSP = db.tDanhMucSPs.Find(id);
            if (tDanhMucSP == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaChatLieu = new SelectList(db.tChatLieux, "MaChatLieu", "ChatLieu", tDanhMucSP.MaChatLieu);
            ViewBag.MaHangSX = new SelectList(db.tHangSXes, "MaHangSX", "HangSX", tDanhMucSP.MaHangSX);
            ViewBag.MaDT = new SelectList(db.tLoaiDTs, "MaDT", "TenLoai", tDanhMucSP.MaDT);
            ViewBag.MaLoai = new SelectList(db.tLoaiSPs, "MaLoai", "Loai", tDanhMucSP.MaLoai);
            ViewBag.MaNuocSX = new SelectList(db.tQuocGias, "MaNuoc", "TenNuoc", tDanhMucSP.MaNuocSX);
            return View(tDanhMucSP);
        }
		// POST: Admin/Admin_63134085/Edit/5
		// To protect from overposting attacks, enable the specific properties you want to bind to, for 
		// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
		[Admin_63134085]
		[HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSP,TenSP,MaChatLieu,NganLapTop,Model,CanNang,DoNoi,MaHangSX,MaNuocSX,MaDacTinh,Website,ThoiGianBaoHanh,GioiThieuSP,ChietKhau,MaLoai,MaDT,AnhDaiDien,GiaNhoNhat,GiaLonNhat,SoLuong")] tDanhMucSP tDanhMucSP)
        {
			var img = Request.Files["Avatar"];
			try
			{
				//Lấy thông tin từ input type=file có tên Avatar
				string postedFileName = System.IO.Path.GetFileName(img.FileName);
				//Lưu hình đại diện về Server
				var path = Server.MapPath("../Images/" + postedFileName);
				img.SaveAs(path);
			}
			catch
			{ }
			if (ModelState.IsValid)
            {
                db.Entry(tDanhMucSP).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaChatLieu = new SelectList(db.tChatLieux, "MaChatLieu", "ChatLieu", tDanhMucSP.MaChatLieu);
            ViewBag.MaHangSX = new SelectList(db.tHangSXes, "MaHangSX", "HangSX", tDanhMucSP.MaHangSX);
            ViewBag.MaDT = new SelectList(db.tLoaiDTs, "MaDT", "TenLoai", tDanhMucSP.MaDT);
            ViewBag.MaLoai = new SelectList(db.tLoaiSPs, "MaLoai", "Loai", tDanhMucSP.MaLoai);
            ViewBag.MaNuocSX = new SelectList(db.tQuocGias, "MaNuoc", "TenNuoc", tDanhMucSP.MaNuocSX);
            return View(tDanhMucSP);
        }
		[Admin_63134085]
		// GET: Admin/Admin_63134085/Delete/5
		public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tDanhMucSP tDanhMucSP = db.tDanhMucSPs.Find(id);
            if (tDanhMucSP == null)
            {
                return HttpNotFound();
            }
            return View(tDanhMucSP);
        }
		// POST: Admin/Admin_63134085/Delete/5
		[Admin_63134085]
		[HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            tDanhMucSP tDanhMucSP = db.tDanhMucSPs.Find(id);
            db.tDanhMucSPs.Remove(tDanhMucSP);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
		int currentDate = Convert.ToInt32(DateTime.Now.Month);		
		[Admin_63134085]
		public ActionResult Dashboard(int thang = 0, int? page = 0)
		{
			int pageSize = 20;
			int pageNumber = page == null || page <= 0 ? 1 : page.Value;
			mapThongKe_63134085 maptk = new mapThongKe_63134085();
			if (thang == 0)
			{
				ViewBag.tk = maptk.getThongKe(currentDate);
				ViewBag.thang = currentDate;
			}
			else
			{
				ViewBag.tk = maptk.getThongKe(thang);
				ViewBag.thang = thang;
			}
			mapKhachHang_63134085 map = new mapKhachHang_63134085();
			var ds = map.LoadDanhSach();
			PagedList<tKhachHang> lst = new PagedList<tKhachHang>(ds, pageNumber, pageSize);
			return View(lst);
		}
	}
}
