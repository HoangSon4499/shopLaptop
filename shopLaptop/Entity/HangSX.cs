using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopLaptop.Entity
{
    public class HangSX
    {
        public HangSX(int idHangSX, string tenHang, string anh)
        {
            this.idHangSX = idHangSX;
            this.tenHang = tenHang;
            this.anh = anh;

        }

        public int idHangSX { get; set; }
        public string tenHang { get; set; }
        public string anh { get; set; }
        public DateTime? createdDate { get; set; }
        public string createdBy { get; set; }
        public DateTime? modifielDate { get; set; }
        public string modifielBy { get; set; }
    }
}