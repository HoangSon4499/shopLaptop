using shopLaptop.Controller;
using shopLaptop.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopLaptop.Page
{
    public partial class Index : System.Web.UI.Page
    {
        public List<TheLoai> lstTheLoai;
        public List<HangSX> lstHangSX;
        public List<SanPham> lstSanPhamByHang;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lstTheLoai = new List<TheLoai>();
            lstHangSX = new List<HangSX>();
            lstSanPhamByHang = new List<SanPham>();
            HomeController homeController = new HomeController();
            foreach(DataRow dr in homeController.getAllTheLoai().Rows)
            {
                TheLoai theLoai = null;

                int idTheLoai=int.Parse(dr["idTheLoai"].ToString());
                 string tenTheLoai=dr["tenTheLoai"].ToString();

                theLoai = new TheLoai(idTheLoai, tenTheLoai);
                lstTheLoai.Add(theLoai);
            }

            foreach (DataRow dr in homeController.getAllHang().Rows)
            {
                HangSX hang = null;

                int idHangSX = int.Parse(dr["idHangSX"].ToString());
                string tenHangSX = dr["tenHang"].ToString();
                string anh = dr["anh"].ToString();

                hang = new HangSX(idHangSX, tenHangSX, anh);
                lstHangSX.Add(hang);
            }


            foreach (DataRow dr in homeController.getSpByHangSX(int.Parse(maHang)).Rows)
            {
                SanPham SpByHangSX = null;

                int idSP = int.Parse(dr["idSP"].ToString());
                string tenSP = dr["tenSP"].ToString();
                int gia = int.Parse(dr["gia"].ToString());
                string anh = dr["anh"].ToString();

                SpByHangSX = new SanPham(idSP, tenSP, gia,anh);
                lstSanPhamByHang.Add(SpByHangSX);
            }
        }
    }
}