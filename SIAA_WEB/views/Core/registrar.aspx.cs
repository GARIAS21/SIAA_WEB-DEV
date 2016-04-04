using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace SIAA_WEB.views.Core
{
    public partial class registrar : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);                
            //    SqlCommand cmd = new SqlCommand("select * from core_roles", cn);
            //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //    DataSet ds = new DataSet();
            //    sda.Fill(ds);
            //    DropDownList1.DataSource = ds;
            //    DropDownList1.DataTextField = "descripcion_rol";
            //    DropDownList1.DataValueField = "id_rol";
            //    DropDownList1.DataBind();
            //}
            //catch
            //{                
            //}
        }        
         
        override protected void OnInit(EventArgs e)
        {        
            InitializeComponent();
            base.OnInit(e);
        }
        
        private void InitializeComponent()
        {            
            this.Load += new System.EventHandler(this.Page_Load);

        }

        protected void Submit1_ServerClick(object sender, EventArgs e)
        {
            if (terminos.Checked == true)
            {
                if (id_clave.Text == id_clavere.Text)
                {
                    try
                    {
                        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                        cn.Open();
                        SqlCommand cmd = new SqlCommand("insert into core_usuarios values('" + id_usuario.Text + "'" +
                                                        ",'" + id_clave.Text + "'" +
                                                        ",'" + id_nombre.Text + "'" +
                                                        ",'" + id_dui.Text + "'" +
                                                        ",'" + id_nit.Text + "'" +
                                                        ",'A'" +
                                                        ",'00002'" +
                                                        ")", cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();           

                        if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
                        {
                            string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                            string SaveLocation = Server.MapPath("~\\img\\usuarios" + "\\" + fn);
                            string renombrar = Server.MapPath("~\\img\\usuarios" + "\\" + id_nombre.Text + ".jpg");
                            try
                            {
                                File1.PostedFile.SaveAs(SaveLocation);
                                File.Move(SaveLocation, renombrar);
                            }
                            catch (Exception ex)
                            {
                                Response.Write("Error : " + ex.Message);
                            }
                        }
                        else
                        {
                            Response.Write("Seleccione su foto para cargar.");
                        }
                        alerta_pass.Visible = true;
                        pass.Text = "Usuario creado satisfactoriamente!";

                    }
                    catch (Exception ex)
                    {
                        string mensaje_error = ex.Message.ToString();
                        error.Text = mensaje_error.ToString();
                        alerta_error.Visible = true;
                    }
                }
                else
                {
                    error.Text = "Las claves ingresadas son diferentes, favor Verificar";
                    alerta_error.Visible = true;
                }
            }
            else
            {
                error.Text = "Debe aceptar los terminos para poder crear su usuario";
                alerta_error.Visible = true;
            }
        }
    
    }
}