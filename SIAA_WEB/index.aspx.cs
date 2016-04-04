using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Text;
using System.Configuration;

namespace SIAA_WEB
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Clases.dashboard dash = new Clases.dashboard();
            dash.llenar_dashboard();            
            Aprob.Text = Clases.dashboard.aprobadas.ToString();
            nuevas.Text = Clases.dashboard.nuevas.ToString();
            noaprobadas.Text = Clases.dashboard.noaprobadas.ToString();
            total.Text = Clases.dashboard.total.ToString();
            
            //if (!this.IsPostBack)
            //{
            //    //Populating a DataTable from database.
            //    DataTable dt = this.CargaGrid_nuevas();

            //    //Building an HTML string.
            //    StringBuilder html = new StringBuilder();

            //    //Table start.
            //    html.Append("<table id=\"example1\" class=\"table table - bordered dataTable\" role=\"grid\" aria-describedby=\"Example1_info\"'>");

            //    //Building the Header row.
            //    html.Append("<tr>");
            //    html.Append("<thead>");
            //    foreach (DataColumn column in dt.Columns)
            //    {
            //        html.Append("<th tabindex=\"0\" class=\"sorting_asc\" aria-controls=\"example2\" aria-label=\"Rendering engine: activate to sort column descending\" aria-sort=\"ascending\" rowspan=\"1\" colspan=\"1\">");
            //        html.Append(column.ColumnName);
            //        html.Append("</th>");
            //    }
            //    html.Append("</tr>");
            //    html.Append("</thead>");

            //    //Building the Data rows.
            //    foreach (DataRow row in dt.Rows)
            //    {
            //        html.Append("<tr class=\"odd\" role=\"row\">");
            //        foreach (DataColumn column in dt.Columns)
            //        {
            //            html.Append("<td>");
            //            html.Append(row[column.ColumnName]);
            //            html.Append("</td>");
            //        }
            //        html.Append("</tr>");
            //    }

            //    html.Append("<ftoot>");
            //    html.Append("<tr>");
            //    html.Append("<th>"); html.Append("No.Transaccion"); html.Append("<th>");
            //    html.Append("<th>"); html.Append("No.Solicitud"); html.Append("<th>");
            //    html.Append("<th>"); html.Append("Modulo"); html.Append("<th>");
            //    html.Append("<th>"); html.Append("ID Contribuyente"); html.Append("<th>");
            //    html.Append("<th>"); html.Append("Estatus"); html.Append("<th>");
            //    html.Append("</tr>");
            //    html.Append("</ftoot>");
            //    //Table end.
            //    html.Append("</table>");

            //    //Append the HTML string to Placeholder.
            //    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            //}


        }

            
        
    }



}