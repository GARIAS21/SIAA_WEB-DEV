using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.SessionState;
using System.Collections;
using System.Data.SqlClient;
using System.Data.OleDb;
using netlib;

using System.Web.Services;

namespace SIAA_WEB
{
    public partial class principal : System.Web.UI.MasterPage
    {
        public string usuario_rol,usuario_modulo;
        protected void Page_Load(object sender, EventArgs e)
        {
            Context.Request.Browser.Adapters.Clear();
            if (Session["New"] == null)
            {
                HttpContext.Current.Response.Redirect("login.aspx", true);
            }

            Img_avatar.ImageUrl = "img/usuarios/" + login.global_usuario.ToString() + ".jpg";
            Img_avatar2.ImageUrl = "img/usuarios/" + login.global_usuario.ToString() + ".jpg";
            image_sidemenu.ImageUrl = "img/usuarios/" + login.global_usuario.ToString() + ".jpg";
            user_log.Text = login.global_usuario.ToString();
            nombre.Text = login.global_usuario.ToString();
            user_sidemenyu.Text = login.global_usuario.ToString();
            puesto.Text = login.global_rol.ToString();
            lock_imagen.ImageUrl = "img/usuarios/" + login.global_usuario.ToString() + ".jpg";
            lock_user.Text = login.global_usuario.ToString();
            usuario_rol = login.global_idrol.ToString();
            leeModulos(login.global_idrol.ToString());

        }

        public static DataTable leeModulos(string id_rol)
        {
            DataTable tabla_menu = new DataTable();
            try
            {                
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select a.id_modulo,b.descripcion_modulo,b.fa from core_permisos_usuarios a left join core_modulos b on (a.id_modulo=b.id_modulo)  where a.id_rol='" + id_rol.ToString() + "' group by a.id_modulo,b.descripcion_modulo,b.fa", conn);
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "menu");
                    tabla_menu = ds.Tables["menu"];
                }
            }
            catch
            {
            }

            return tabla_menu;
        }

        public static DataTable leeOpciones(string rol, string menu)
        {
            DataTable tabla_opciones = new DataTable();
            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);

                SqlCommand cmd = new SqlCommand("select * from core_permisos_usuarios  where id_rol='" + rol.ToString() + "' and id_modulo='" + menu.ToString() + "'", conn);
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds; ds = new DataSet();
                    da.Fill(ds, "opciones");
                    tabla_opciones = ds.Tables["opciones"];
                }
            }
            catch
            {
            }

            return tabla_opciones;
        }




        [WebMethod()]
        public static void SessionAbandon()
        {            
            HttpContext.Current.Session.Abandon();
            HttpContext.Current.Session.Clear();            
        }


    }

}