using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace SIAA_WEB.Clases
{
    public class autenticar
    {
        public static string global_usuario;
        public static string global_rol;
        public static bool Autenticar(string usuario, string clave)
        {
            //consulta a la base de datos
            string sql = @"select 
                            a.id_usuario,
                            a.clave_acceso,
                            a.nombre ,
                            b.descripcion_rol 
                            from core_usuarios a left join core_roles b on (a.id_rol=b.id_rol) 
                            where a.id_usuario =@user and a.clave_acceso=@pass and a.estatus='A'";
            
            //cadena conexion
            Coneccion.coneccion cn = new Clases.Coneccion.coneccion();            
            cn.objConexion.Open();//abrimos conexion
                SqlCommand cmd = new SqlCommand(sql,cn.objConexion); //ejecutamos la instruccion
                cmd.Parameters.AddWithValue("@user", usuario); //enviamos los parametros
                cmd.Parameters.AddWithValue("@pass", clave);

            DataTable tabla = new DataTable();
            tabla = cn.leeDatos(sql);

            global_usuario = tabla.Rows[0][2].ToString();
            global_rol = tabla.Rows[0][3].ToString();

            int count = Convert.ToInt32(cmd.ExecuteScalar()); //devuelve la fila afectada



                if (count == 0)
                    return false;
                else
                    return true;
            
        }
    }
}