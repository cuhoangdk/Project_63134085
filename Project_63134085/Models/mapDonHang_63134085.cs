using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models
{
	public class mapDonHang_63134085
	{
		Project_63134085Entities1 db = new Project_63134085Entities1();
		public List<tHoaDonBan> DanhSach()
		{
			return db.tHoaDonBans.ToList();
		}
		public tHoaDonBan GetChiTiet(string id)
		{
			return db.tHoaDonBans.Find(id);
		}

		public void ThemChiTietHDB(string idGH, string idDH)
		{
			var newDH = new tHoaDonBan();
			mapGioHang_63134085 map = new mapGioHang_63134085();
			var dsSP = map.GetChiTietGioHang(idGH);
			List<tChiTietHDB> listSp = new List<tChiTietHDB>();
			foreach (var sp in dsSP)
			{
				if (db.tDanhMucSPs.Find(sp.MaSanPham).SoLuong - sp.SoLuong < 0)
				{
					continue;
				}
				db.tDanhMucSPs.Find(sp.MaSanPham).SoLuong = (int)(db.tDanhMucSPs.Find(sp.MaSanPham).SoLuong - sp.SoLuong);
				tChiTietHDB spdh = new tChiTietHDB();
				spdh.MaSP= sp.MaSanPham;
				spdh.MaHoaDon = idDH;
				spdh.TenSP = sp.tDanhMucSP.TenSP;
				spdh.AnhDaiDien = sp.tDanhMucSP.AnhDaiDien;
				spdh.Loai = sp.tDanhMucSP.tLoaiSP.Loai;
				spdh.SoLuongBan = sp.SoLuong;
				spdh.DonGiaBan = sp.tDanhMucSP.GiaNhoNhat * sp.SoLuong;
				listSp.Add(spdh);
			}
			db.tChiTietHDBs.AddRange(listSp);
			//db.SaveChanges();
		}
		public tHoaDonBan ThemDonHang(string idKH, string idGH, string sdt, string ten, string ghiChu, string diaChi)
		{
			var newDH = new tHoaDonBan();
			mapGioHang_63134085 map = new mapGioHang_63134085();
			string lastDHId = db.tHoaDonBans.OrderByDescending(x => x.MaHoaDon).Select(x => x.MaHoaDon).FirstOrDefault();
			string newDHId;
			if (lastDHId == null)
			{
				newDHId = "HD001";
			}
			else
			{
				int lastDHNumber = int.Parse(lastDHId.Substring(2));
				int nextDHNumber = lastDHNumber + 1;
				newDHId = "HD" + nextDHNumber.ToString("D3");
			}
			ThemChiTietHDB(idGH, newDHId);
			newDH.MaHoaDon = newDHId;
			newDH.MaKhachHang = idKH;			
			newDH.Ten = ten;
			newDH.DienThoai = sdt;
			newDH.GhiChu = ghiChu;
			newDH.DiaChi = diaChi;
			newDH.TrangThai = "Đang giao";
			newDH.NgayHoaDon = DateTime.Now;
			newDH.TongTienHD = db.tGioHangs.FirstOrDefault(m => m.MaKhachHang == idKH).TongTienHD;
			map.XoaGioHang(idGH);
			db.tHoaDonBans.Add(newDH);
			db.SaveChanges();
			return newDH;
		}
		public List<tChiTietHDB> GetChiTietHDBs(string id)
		{
			var ds = db.tChiTietHDBs.Where(m => m.MaHoaDon == id).ToList();			
			return ds;

		}

		public List<tChiTietHDB> GetAllChiTietHDBs()
		{
			var ds = db.tChiTietHDBs.ToList();
			return ds;

		}

		public void SetTrangThaiDonHangThanhCong(string id)
		{
			var dh = db.tHoaDonBans.Find(id);
			dh.TrangThai = "Đã giao";
			db.SaveChanges();
		}
		public void SetTrangThaiDonHangThatBai(string id)
		{
			var dh = db.tHoaDonBans.Find(id);
			dh.TrangThai = "Giao không thành công";
			db.SaveChanges();
		}		
	}
}