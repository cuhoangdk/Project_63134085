//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Project_63134085.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tChiTietGioHang
    {
        public int ID { get; set; }
        public string MaGioHang { get; set; }
        public string MaSanPham { get; set; }
        public Nullable<int> SoLuong { get; set; }
        public Nullable<System.DateTime> NgayThem { get; set; }
        public Nullable<decimal> Gia { get; set; }
        public string GhiChu { get; set; }
    
        public virtual tGioHang tGioHang { get; set; }
        public virtual tDanhMucSP tDanhMucSP { get; set; }
    }
}
