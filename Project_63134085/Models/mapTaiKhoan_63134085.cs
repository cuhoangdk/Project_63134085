using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_63134085.Models
{
	public class mapTaiKhoan_63134085
	{
		Project_63134085Entities1 db = new Project_63134085Entities1();
		public tNhanVien TimKiemAdmin(string username, string password)
		{
			var user = db.tNhanViens.Where(m => m.username == username & m.password == password).ToList();
			if (user.Count > 0)
			{
				return user[0];
			}
			else
			{
				return null;
			}
		}
		public tKhachHang TimKiemUser(string username, string password)
		{
			var user = db.tKhachHangs.Where(m => m.username == username & m.password == password).ToList();
			if (user.Count > 0)
			{
				return user[0];
			}
			else
			{
				return null;
			}
		}
	}
}