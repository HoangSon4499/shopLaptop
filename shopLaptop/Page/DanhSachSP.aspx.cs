using MySql.Data.MySqlClient;
using shopLaptop.Connection;
using shopLaptop.Controller;
using shopLaptop.Entity;
using System;
using System.Collections.Generic;
using System.Data;





namespace shopLaptop.Page
{
    public partial class DanhSachSP : System.Web.UI.Page
    {
        public List<SanPham> lstSanPhamByTheLoai;
        public List<TheLoai> lstTheLoai;
        public List<SanPham> lstSPBy8;
        public List<SanPham> lstSanPham3;
        public List<HangSX> lstHangSX;

        protected void Page_Load(object sender, EventArgs e)
        {
            DanhSachSPController DanhSachSPController = new DanhSachSPController();
            HomeController homeController = new HomeController();
            lstSanPhamByTheLoai = new List<SanPham>();
            lstTheLoai = new List<TheLoai>();
            lstSPBy8 = new List<SanPham>();
            lstSanPham3 = new List<SanPham>();
            lstHangSX = new List<HangSX>();

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

            foreach(DataRow dr in homeController.getAllHang().Rows)
            {
                HangSX hang = null;
                int idHangSX = int.Parse(dr["idHangSX"].ToString());
                string tenHangSX = dr["tenHang"].ToString();
                string anh = dr["anh"].ToString();

                hang = new HangSX(idHangSX, tenHangSX, anh);
                lstHangSX.Add(hang);
            }
        }

        //public void LoadDdlHangSX()
        //{
        //    conn = DbConnection.GetDBConnection();
        //    string sql = "SELECT * FROM HangSX";
        //    MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
        //    DataTable dt = new DataTable();
        //    adapter.Fill(dt);
        //    ddlHangSX.DataSource = dt;
        //    ddlHangSX.DataTextField = "tenHang";
        //    ddlHangSX.DataValueField = "idHangSX";
        //    ddlHangSX.DataBind();
        //}
    }
}