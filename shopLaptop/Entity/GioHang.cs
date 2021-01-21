using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopLaptop.Entity
{
    public class GioHang
    {
        public int idGioHang { get; set; }
        public string nguoiNhan { get; set; }
        public string diaChi { get; set; }
        public int sdt { get; set; }
        public int maPPThanhToan { get; set; }
        public int maUser { get; set; }
    }
}