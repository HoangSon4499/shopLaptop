using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopLaptop.Connection
{
    public class DbConnection
    {
        public static MySqlConnection GetDBConnection()
        {
            String connString = "Server=127.0.0.1;" +
                                "Database=shoplaptop;" +
                                "port=3306;" +
                                "User Id=root;" +
                                "password=1234";

            MySqlConnection conn = new MySqlConnection(connString);

            return conn;
        }
    }
}