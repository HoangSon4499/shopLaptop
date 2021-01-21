using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopLaptop.Entity
{
    public class SanPham
    {
        public SanPham(int idSP, string tenSP, int gia, string anh)
        {
            idsp = idSP;
            this.tenSP = tenSP;
            this.gia = gia;
            this.anh = anh;
        }

        public int idsp { get; set; }
        public string tenSP { get; set; }
        public int gia { get; set; }
        public string moTa { get; set; }
        public int luotXem { get; set; }
        public int luotLike { get; set; }
        public string anh { get; set; }
        public bool status { get; set; }
        public DateTime? createdDate { get; set; }
        public string createdBy { get; set; }
        public DateTime? modifielDate { get; set; }
        public string modifielBy { get; set; }
        public int maHang { get; set; }
        public int maTheLoai { get; set; }
        public int maGioHang { get; set; }
    }
}