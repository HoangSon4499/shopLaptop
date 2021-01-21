using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopLaptop.Entity
{
    public class TheLoai
    {
        public TheLoai(int idTheLoai, string tenTheLoai)
        {
            this.idTheLoai = idTheLoai;
            this.tenTheLoai = tenTheLoai;
        }

        public int idTheLoai { get; set; }
        public string tenTheLoai { get; set; }
        public DateTime? createdDate { get; set; }
        public string createdBy { get; set; }
        public DateTime? modifielDate { get; set; }
        public string modifielBy { get; set; }
        
   
    }
}