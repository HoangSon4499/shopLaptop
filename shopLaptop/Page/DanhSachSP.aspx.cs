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
    public partial class DanhSachSP : System.Web.UI.Page
    {
        public List<SanPham> lstSanPhamByTheLoai;
        public List<TheLoai> lstTheLoai;
        public List<SanPham> lstSPBy8;
        public List<SanPham> lstSanPham3;
        protected void Page_Load(object sender, EventArgs e)
        {
            DanhSachSPController DanhSachSPController = new DanhSachSPController();
            HomeController homeController = new HomeController();
            lstSanPhamByTheLoai = new List<SanPham>();
            lstTheLoai = new List<TheLoai>();
            lstSPBy8 = new List<SanPham>();
            lstSanPham3 = new List<SanPham>();
            string maTheLoai = Request.QueryString["param"];
            foreach (DataRow dr in DanhSachSPController.getSanPhamByTheLoai(int.Parse(maTheLoai)).Rows)
            {
                SanPham  DSSP= null;
                int idSP = int.Parse(dr["idSP"].ToString());
                string tenSP = dr["tenSP"].ToString();
                int gia = int.Parse(dr["gia"].ToString());
                string anh = dr["anh"].ToString();
                int maHang = int.Parse(dr["maHang"].ToString());

                DSSP = new SanPham(idSP, tenSP, gia, anh, maHang);
                lstSanPhamByTheLoai.Add(DSSP);
            }

            foreach (DataRow dr in homeController.getAllTheLoai().Rows)
            {
                TheLoai theLoai = null;

                int idTheLoai = int.Parse(dr["idTheLoai"].ToString());
                string tenTheLoai = dr["tenTheLoai"].ToString();

                theLoai = new TheLoai(idTheLoai, tenTheLoai);
                lstTheLoai.Add(theLoai);
            }

            foreach (DataRow dr in homeController.getSpBy8().Rows)
            {
                SanPham DS = null;
                int idSP = int.Parse(dr["idSP"].ToString());
                string tenSP = dr["tenSP"].ToString();
                int gia = int.Parse(dr["gia"].ToString());
                string anh = dr["anh"].ToString();
                int maHang = int.Parse(dr["maHang"].ToString());

                DS = new SanPham(idSP, tenSP, gia, anh, maHang);
                lstSPBy8.Add(DS);
            }

            foreach (DataRow dr in homeController.getSpBy3().Rows)
            {
                SanPham SpBy3 = null;

                int idSP = int.Parse(dr["idSP"].ToString());
                string tenSP = dr["tenSP"].ToString();
                int gia = int.Parse(dr["gia"].ToString());
                string anh = dr["anh"].ToString();
                int maHang = int.Parse(dr["maHang"].ToString());

                SpBy3 = new SanPham(idSP, tenSP, gia, anh, maHang);
                lstSanPham3.Add(SpBy3);
            }
        }
    }
}