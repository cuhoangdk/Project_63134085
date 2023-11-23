using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models
{
	public class mapKhachHang_63134085
	{
		Project_63134085Entities1 db = new Project_63134085Entities1();
		// Lấy dữ liệu khách hàng: 
		public List<tKhachHang> LoadDanhSach()
		{
			//kết nối 			
			var danhSach = db.tKhachHangs.ToList();					
			return danhSach;
		}
		public tKhachHang GetChiTiet(string id)
		{
			var doiTuong = db.tKhachHangs.Find(id);
			return doiTuong;
		}
	}
}