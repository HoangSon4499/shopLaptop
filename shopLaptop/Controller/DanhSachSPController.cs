using MySql.Data.MySqlClient;
using shopLaptop.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace shopLaptop.Controller
{
    public class DanhSachSPController
    {
        MySqlConnection conn = DbConnection.GetDBConnection();

        public DataTable getSanPhamByTheLoai(int maTheLoai)
        {
            string sql = "SELECT * FROM SanPham WHERE maTheLoai=" + maTheLoai;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }

        public DataTable getSanPhamByTheLoaiAndHangSX(int maTheLoai, int maHangSX)
        {
            string sql = "SELECT * FROM SanPham WHERE maTheLoai=" + maTheLoai+" AND maHang="+maHangSX;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
    }
}