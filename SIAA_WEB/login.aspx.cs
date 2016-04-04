using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Web.Security;

namespace SIAA_WEB
{
    public partial class login : System.Web.UI.Page
    {
        public static string global_usuario;
        public static string global_rol;
        public static string global_idrol;
        public static string global_pass;

        protected void Page_Load(object sender, EventArgs e)
        {
            Context.Request.Browser.Adapters.Clear();
            Session["New"] = "";            
        }
        protected void id_sesion_Click(object sender, EventArgs e)
        {
            try
            {
                string usuario = id_usuario.Text;
                string clave = id_clave.Text;

                SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                //Clases.Coneccion.coneccion cn = new Clases.Coneccion.coneccion();
                //cn.objConexion.Open();
                DataTable tabla = new DataTable();
                SqlCommand cmd = new SqlCommand("select a.id_usuario,a.clave_acceso,a.nombre ,b.descripcion_rol,a.id_rol from core_usuarios a left join core_roles b on (a.id_rol=b.id_rol) where a.id_usuario ='" + usuario + "' and a.clave_acceso='" + clave + "' and a.estatus='A'",cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds; ds = new DataSet();
                da.Fill(ds, "login");                
                tabla = ds.Tables["login"];
                

                string user = tabla.Rows[0][0].ToString();
                string login = tabla.Rows[0][1].ToString();
                global_pass = login.ToString();
                global_usuario = tabla.Rows[0][2].ToString();
                global_rol = tabla.Rows[0][3].ToString();
                global_idrol = tabla.Rows[0][4].ToString();

                if (usuario == user && clave == login)
                {
                    Session["New"] = usuario.ToString();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    alerta_error.Visible = true;
                    error.Text = "Usuario / Clave Invalidos! Favor Verificarlos.";
                }                
            }
            catch (Exception ex)
            {
                string mensaje_error=ex.Message.ToString();
                //error.Text = mensaje_error.ToString();
                error.Text = "Usuario / Clave Invalidos!-Favor Verificarlos.";
                alerta_error.Visible = true;
            }
        }

        
    }
}