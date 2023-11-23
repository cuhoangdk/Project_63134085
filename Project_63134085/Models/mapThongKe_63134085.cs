using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models
{
	public class mapThongKe_63134085
	{
		Project_63134085Entities1 db = new Project_63134085Entities1 ();
		public ThongKe_63134085 getThongKe(int thang)
		{
			var thongKe = new ThongKe_63134085();
			thongKe.tongDoanhThu = (decimal)db.tHoaDonBans.Where(m => m.NgayHoaDon.Value.Month == thang).ToList().Sum(m => m.TongTienHD);
			thongKe.tongNguoiDung = db.tKhachHangs.Count();			
			thongKe.tongDonHang = db.tHoaDonBans.Where(m => m.NgayHoaDon.Value.Month == thang).ToList().Count;
			thongKe.tongDonHangDaGiao = db.tHoaDonBans.Where(m => m.NgayHoaDon.Value.Month == thang && m.TrangThai == "Đã giao").ToList().Count;
			thongKe.tongDonHangGiaoKhongThanhCong = db.tHoaDonBans.Where(m => m.NgayHoaDon.Value.Month == thang && m.TrangThai == "Giao không thành công").ToList().Count;			
			return thongKe;
		}
	}
}