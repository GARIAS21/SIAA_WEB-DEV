using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace SIAA_WEB.Clases
{
    public class dashboard
    {

        public static string nuevas;
        public static string aprobadas;
        public static string noaprobadas;
        public static string total;

        public void llenar_dashboard()
        {
            try
            {             
                SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                DataTable tabladash = new DataTable();
                SqlCommand cmd = new SqlCommand("select (select count(estatus) Nuevas from core_transacciones where estatus='N') nuevas,(select count(estatus) aprobadas from core_transacciones where estatus='A')aprobadas,(select count(estatus) noaprobadas from core_transacciones where estatus='NA')noaprobadas,(select count(estatus) total from core_transacciones) total", cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds; ds = new DataSet();
                da.Fill(ds, "dashboard");
                tabladash = ds.Tables["dashboard"];

                nuevas = tabladash.Rows[0][0].ToString();
                aprobadas = tabladash.Rows[0][1].ToString();
                noaprobadas = tabladash.Rows[0][2].ToString();
                total = tabladash.Rows[0][3].ToString();
            }
            catch
            {
                nuevas = "0";
                aprobadas = "0";
                noaprobadas = "0";
                total = "0";
            }
        }

        public DataTable CargaGrid_nuevas()
        {
            DataTable tabla5 = new DataTable();
            try
            {
                //cadena conexion
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select * from core_transacciones where estatus='N'", conn);
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "casos_nuevos");
                    tabla5 = ds.Tables["casos_nuevos"];
                }                
            }
            catch
            {                
            }

            return tabla5;
        }

        public DataTable CargaGrid_Aprobadas()
        {
            DataTable tabla6 = new DataTable();
            try
            {
                //cadena conexion
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select * from core_transacciones where estatus='A'", conn);
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "casos_aprobados");
                    tabla6 = ds.Tables["casos_aprobados"];
                }
            }
            catch
            {
            }

            return tabla6;
        }

        public DataTable CargaGrid_NoAprobadas()
        {
            DataTable tabla7 = new DataTable();
            try
            {
                //cadena conexion
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select * from core_transacciones where estatus='NA'", conn);
                {                    
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "casos_noaprobados");                 
                    tabla7 = ds.Tables["casos_noaprobados"];
                }
            }
            catch
            {
            }

            return tabla7;
        }

        public DataTable CargaGrid_Total()
        {
            DataTable tabla8 = new DataTable();
            try
            {
                //cadena conexion
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select * from core_transacciones", conn);
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "casos_total");
                    tabla8 = ds.Tables["casos_total"];
                }
            }
            catch
            {
            }

            return tabla8;
        }
    }

}