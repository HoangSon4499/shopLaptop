using MySql.Data.MySqlClient;
using shopLaptop.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace shopLaptop.Controller
{
    public class HomeController
    {
        MySqlConnection conn = DbConnection.GetDBConnection();
        public DataTable getAllSP()
        {
            String sql = "SELECT * FROM SanPham ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getAllHang()
        {
            String sql = "SELECT * FROM HangSX";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getAllTheLoai()
        {
            String sql = "SELECT * FROM TheLoai";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getSpByHangSX(int idHangSX)
        {
            String sql = "SELECT * FROM SanPham where maHang="+idHangSX;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }
    }
}