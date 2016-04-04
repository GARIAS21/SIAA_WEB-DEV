using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using netlib;
using System.Data;

namespace SIAA_WEB.Clases.Coneccion
{
    class coneccion
    {


        #region Declaraciones

        public SqlConnection objConexion;

        static string server = "tcp:atencion-ciudadana.database.windows.net,1433";
        static string basedatos = "atencion_ciudadana";
        static string usuario = "administrador@atencion-ciudadana";
        static string clave = "P@$$w0rd";
        netlib7 cl;
        #endregion

       

        public coneccion()
        {
            
            string DB = "WILMARKGARCIA\\SQLEXPRESS";
            string CATALOG = "atencion_ciudadana";
            string usuario = "sa";
            string clave = "P@$$w0rd";

            //string DB = "tcp:atencion-ciudadana.database.windows.net,1433";
            //string CATALOG = "atencion_ciudadana";
            //string usuario = "administrador@atencion-ciudadana";
            //string clave = "P@$$w0rd";


            objConexion = new SqlConnection();            
            objConexion.ConnectionString = String.Format("Data Source= " + DB.ToString() + 
                                                        " ; Initial Catalog=" + CATALOG.ToString() + 
                                                        ";User ID=" + usuario.ToString() + 
                                                        ";Password=" + clave.ToString() +";");
            
        }

        public void sqlClose()
        {
            objConexion.Close();
        }

        public DataTable leeDatos(string strSql)
        {
            DataTable tabla = new DataTable();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter(strSql, objConexion);
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Fill(tabla);
                sqlClose();
            }
            catch
            { }

            return tabla;
        }

        public bool sqlComando(string strSql)
        {
            bool result = true;

            try
            {
                SqlCommand cmd = new SqlCommand(strSql, objConexion);
                objConexion.Open();
                cmd.ExecuteNonQuery();
                sqlClose();
            }
            catch
            {
                result = false;
            }

            return result;
        }

    }
}