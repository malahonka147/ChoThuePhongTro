using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace DACSN.App_Code
{
    public class XLDL
    {
        public static string strCon = "Data Source=.;Initial Catalog=QLNhaTro;Integrated Security=True";
        public static DataTable GetData(string LenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDa = new SqlDataAdapter(LenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void Execute(string LenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(LenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
        public static string GetValue(string LenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(LenhSQL, sqlCon);
                string value = sqlCmd.ExecuteNonQuery().ToString();
                sqlCon.Close();
                return (value);
            }
        }
    }
}