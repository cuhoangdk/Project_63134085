using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models
{
	public class mapGioHang_63134085
	{
		Project_63134085Entities1 db = new Project_63134085Entities1();
		public tGioHang GetGioHang(string id)
		{
			var gh = db.tGioHangs.FirstOrDefault(m => m.MaKhachHang == id);
			if (gh == null)
			{
				tGioHang newgh = new tGioHang();
				string numberUser = id.Substring(2); // Lấy số sau "KH"
				newgh.MaGioHang = "GH" + numberUser;
				newgh.MaKhachHang = id;
				newgh.NgayCapNhat = DateTime.Now;
				newgh.TongTienHD = 0;
				db.tGioHangs.Add(newgh);
				db.SaveChanges();
				return newgh;
			}
			return gh;
		}
		public List<tChiTietGioHang> GetChiTietGioHang(string id)
		{
			var ds = db.tChiTietGioHangs.Where(m => m.MaGioHang == id).ToList();
			return ds;

		}

		public void ThemVaoGioHang(string idGH, string idSP, int SoLuong)
		{

			var spGH = new tChiTietGioHang();
			var sp = db.tChiTietGioHangs.FirstOrDefault(m => m.MaSanPham == idSP & m.MaGioHang == idGH);
			if (sp == null)
			{
				spGH.MaGioHang = idGH;
				spGH.MaSanPham = idSP;
				spGH.SoLuong = SoLuong;				
				spGH.NgayThem = DateTime.Now;
				spGH.Gia = db.tDanhMucSPs.Find(idSP).GiaNhoNhat * SoLuong;
				spGH.GhiChu = "";
				// thêm vào db
				db.tChiTietGioHangs.Add(spGH);
				// lưu vào db
				db.SaveChanges();
				var giohang = db.tGioHangs.SingleOrDefault(m => m.MaGioHang == idGH);
				giohang.TongTienHD = GetChiTietGioHang(idGH).Sum(m => m.tDanhMucSP.GiaNhoNhat * m.SoLuong);
				giohang.NgayCapNhat = DateTime.Now;
				db.SaveChanges();

			}
			else
			{
				sp.SoLuong += SoLuong;
				sp.Gia = sp.tDanhMucSP.GiaNhoNhat * sp.SoLuong;
				sp.NgayThem = DateTime.Now;
				db.SaveChanges();
				var giohang = db.tGioHangs.SingleOrDefault(m => m.MaGioHang == idGH);
				giohang.TongTienHD = GetChiTietGioHang(idGH).Sum(m => m.tDanhMucSP.GiaNhoNhat * m.SoLuong);
				giohang.NgayCapNhat = DateTime.Now;
				db.SaveChanges();
			}

		}

		public bool XoaSanPham(string idGH, string idSP)
		{
			var sp = db.tChiTietGioHangs.FirstOrDefault(m => m.MaSanPham == idSP & m.MaGioHang == idGH);
			if (sp != null)
			{
				db.tChiTietGioHangs.Remove(sp);
				db.SaveChanges();
				var giohang = db.tGioHangs.SingleOrDefault(m => m.MaGioHang == idGH);
				giohang.TongTienHD = GetChiTietGioHang(idGH).Sum(m => m.tDanhMucSP.GiaNhoNhat * m.SoLuong);
				giohang.NgayCapNhat = DateTime.Now;
				db.SaveChanges();
				return true;
			}
			else
			{
				return false;
			}

		}

		public void XoaGioHang(string idGH)
		{
			var ListSanPhamXoa = db.tChiTietGioHangs.Where(m => m.MaGioHang == idGH).ToList();
			db.tGioHangs.FirstOrDefault(m => m.MaGioHang == idGH).TongTienHD = 0;
			db.tChiTietGioHangs.RemoveRange(ListSanPhamXoa);
			db.SaveChanges();
		}
	}
}