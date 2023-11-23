﻿//------------------------------------------------------------------------------
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
	using System.ComponentModel;

	public partial class tDanhMucSP
	{
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tDanhMucSP()
        {
            this.tAnhSPs = new HashSet<tAnhSP>();
            this.tChiTietGioHangs = new HashSet<tChiTietGioHang>();
            this.tChiTietHDBs = new HashSet<tChiTietHDB>();
        }

		[DisplayName("Mã sản phẩm")]
		public string MaSP { get; set; }
		[DisplayName("Tên sản phẩm")]
		public string TenSP { get; set; }
		[DisplayName("Mã chất liệu")]
		public string MaChatLieu { get; set; }
		[DisplayName("Cân Nặng")]
		public Nullable<double> CanNang { get; set; }
		[DisplayName("Độ nới")]
		public Nullable<double> DoNoi { get; set; }
		[DisplayName("Mã hãng sản xuất")]
		public string MaHangSX { get; set; }
		[DisplayName("Mã nước sản xuất")]
		public string MaNuocSX { get; set; }
		[DisplayName("Mã đặc tính")]
		public string MaDacTinh { get; set; }
		[DisplayName("Thời gian bảo hành")]
		public Nullable<double> ThoiGianBaoHanh { get; set; }
		[DisplayName("Giới thiệu sản phẩm")]
		public string GioiThieuSP { get; set; }
		[DisplayName("Mã loại")]
		public string MaLoai { get; set; }
		[DisplayName("Mã đối tượng")]
		public string MaDT { get; set; }
		[DisplayName("Ảnh sản phẩm")]
		public string AnhDaiDien { get; set; }
		[DisplayName("Giá nhỏ nhất")]
		public Nullable<decimal> GiaNhoNhat { get; set; }
		[DisplayName("Giá lớn nhất")]
		public Nullable<decimal> GiaLonNhat { get; set; }
		[DisplayName("Số lượng")]
		public Nullable<int> SoLuong { get; set; }

		[System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tAnhSP> tAnhSPs { get; set; }
        public virtual tChatLieu tChatLieu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tChiTietGioHang> tChiTietGioHangs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tChiTietHDB> tChiTietHDBs { get; set; }
        public virtual tHangSX tHangSX { get; set; }
        public virtual tLoaiDT tLoaiDT { get; set; }
        public virtual tLoaiSP tLoaiSP { get; set; }
        public virtual tQuocGia tQuocGia { get; set; }
    }
}
