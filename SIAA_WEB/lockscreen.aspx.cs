using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIAA_WEB
{
    public partial class lockscreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           try
            {
                //Add refresh header to refresh the page 60 seconds before session timeout
                Response.AddHeader("Refresh", Convert.ToString((Session.Timeout * 60) - 60));                
             }
            catch (Exception)
            {
                throw;
            }
        }

        protected void id_sesion_Click(object sender, EventArgs e)
        {
            try
            {
                string clave = id_clave.Text;
                string login = SIAA_WEB.login.global_pass.ToString();


                if (clave == login)
                {
                    Response.AddHeader("Refresh", Convert.ToString((Session.Timeout * 60) - 60));
                }
                else
                {
                    Response.Write("Error! - La clave es invalida, favor verificar!");
                }
            }
            catch
            {
            }
        }

    }
}