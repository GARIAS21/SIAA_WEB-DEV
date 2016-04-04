<%@ Page Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SIAA_WEB.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">     
    
    <script lang="Javascript">   
        <!--  
        document.write('<style type="text/css">div.cp_oculta{display: none;}</style>');  
        function MostrarOcultar(capa,enlace)  
        {  
            if (document.getElementById)  
            {  
                var aux = document.getElementById(capa).style;  
                aux.display = aux.display? "":"block";  
            }  
        }  
   
        //-->  
        </script> 
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">      
        
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>    
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">          
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><asp:Label runat="server" ID="nuevas" Text=""/> </h3>
                  <p>Nuevas Solicitudes</p>
                </div>
                <div class="icon">
                  <i class="ion ion-android-add"></i>
                </div>
                <a href="javascript:MostrarOcultar('div_nuevas');" class="small-box-footer">Ver detalle <i class="fa fa-arrow-circle-right"></i></a>                
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><asp:Label runat="server" ID="Aprob" Text="" /></h3>
                  <p>Solicitudes Aprobadas</p>
                </div>
                <div class="icon">
                  <i class="ion ion-android-send"></i>
                </div>
                <a href="javascript:MostrarOcultar('div_aprobadas');" class="small-box-footer">Ver detalle <i class="fa fa-arrow-circle-right"></i></a>                
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><asp:Label runat="server" ID="noaprobadas" Text=""/></h3>
                  <p>Solicitudes No Aprobadas</p>
                </div>
                <div class="icon">
                  <i class="ion ion-alert-circled"></i>
                </div>
                  <a href="javascript:MostrarOcultar('div_no_aprobadas');" class="small-box-footer">Ver detalle <i class="fa fa-arrow-circle-right"></i></a>                
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><asp:Label runat="server" ID="total" Text=""/></h3>
                  <p>Detalle Total de Solicitudes</p>
                </div>
                <div class="icon">
                  <i class="ion ion-document"></i>
                </div>
                  <a href="javascript:MostrarOcultar('div_Total_Sol');" class="small-box-footer">Ver detalle <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->  

        <!--  ********************* SOLICITUDES NUEVAS ********************* -->
          <section class="content">
              
                  <div class="cp_oculta" id="div_nuevas">                   
                       <div class="col-md-14" runat="server" ID="Div3">                                      
                          <div class="box box-primary">
                                <div class="box-header with-border">
                                  <i class="fa fa-envelope-o"></i>
                                  <h3 class="box-title">Detalle Total de Solicitudes</h3>
                                  <div class="box-tools pull-right">                                    
                                  </div>
                                 </div>                            

                                <div class="box-body">   
                                    <div class="dataTables_wrapper form-inline dt-bootstrap" id="example1_wrapper">
                                        <div class="row">
                                            <div class="col-sm-6">
                                            
                                            </div>
                                            <div class="col-sm-6">
                                                
                                            </div>
                                        </div>
                                            <div class="col-sm-6">  
                                                                                      
                                            </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-sm-12">
                                                 <table id="example1" class="table table-bordered dataTable">
                                                    <thead>
                                                  <tr role="row">
                                                    <th >No. Transaccion</th>
                                                    <th>No. Solicitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th> 
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>                        
                                                  </tr>
                                                </thead>
                                                <tbody>

                                                 <!--<asp:PlaceHolder  ID = "PlaceHolder1" runat="server" />    -->
                                                 <%
                                                     string html;
                                                     System.Data.DataTable tabla1 = new System.Data.DataTable();
                                                     SIAA_WEB.Clases.dashboard dash = new SIAA_WEB.Clases.dashboard();
                                                     tabla1 =  dash.CargaGrid_nuevas();
                                                     foreach(System.Data.DataRow Reg in tabla1.Rows)
                                                     {
                                                         html = "<tr class=\"odd\" role=\"row\">" +
                                                                   "<td>" + Reg[0] + "</td>" +
                                                                   "<td>" + Reg[1] + "</td>" +
                                                                   "<td>" + Reg[2] + "</td>" +
                                                                   "<td>" + Reg[3] + "</td>" +
                                                                   "<td>" + Reg[4] + "</td>" +
                                                                   "<td>" + Reg[5] + "</td>" +
                                                               "<tr>";

                                                         Response.Write(html);

                                                     }
                                                       %> 
                                                    
                                                    </tbody>
                                                <tfoot>
                                                  <tr>
                                                    <th>No. Transaccion</th>
                                                    <th>No. Solitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th>
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>
                                                  </tr>
                                                </tfoot>
                                              </table>                                                                                                                 
                                            </div>
                                         </div>
                                        <div class="row">
                                          <div class="col-sm-5">                                              
                                          </div>
                                          <div class="col-sm-7">                                      
                                           </div>
                                        </div>
                                    </div>                                                  
                              </div> <!-- /.box -->                 
                          </div> <!-- /.col -->                       
                      </div>                   
            

                  <!--  ********************* SOLICITUDES APROBADAS ********************* -->

                  <div class="cp_oculta" id="div_aprobadas">
                   <div class="col-md-14" runat="server" ID="Div2">                                    
                      <div class="box box-primary">
                        <div class="box-header with-border">
                          <i class="fa fa-thumbs-o-up"></i>
                          <h3 class="box-title">Detalle de Solicitudes Aprobadas</h3>
                          <div class="box-tools pull-right">                            
                          </div>
                         </div>
                        <div class="box-body">                
                            <div class="dataTables_wrapper form-inline dt-bootstrap" id="example2_wrapper">
                                        <div class="row">
                                            <div class="col-sm-6">
                                            
                                            </div>
                                            <div class="col-sm-6">
                                                
                                            </div>
                                        </div>
                                            <div class="col-sm-6">  
                                                                                      
                                            </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-sm-12">
                                                 <table id="example2" class="table table-bordered dataTable">
                                                    <thead>
                                                  <tr role="row">
                                                    <th >No. Transaccion</th>
                                                    <th>No. Solicitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th> 
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>                        
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                 
                                                 <%
                                                     string html;
                                                     System.Data.DataTable tabla2 = new System.Data.DataTable();
                                                     SIAA_WEB.Clases.dashboard dash = new SIAA_WEB.Clases.dashboard();
                                                     tabla2 = dash.CargaGrid_Aprobadas();
                                                     foreach(System.Data.DataRow Reg in tabla2.Rows)
                                                     {
                                                         html = "<tr class=\"odd\" role=\"row\">" +
                                                                   "<td>" + Reg[0] + "</td>" +
                                                                   "<td>" + Reg[1] + "</td>" +
                                                                   "<td>" + Reg[2] + "</td>" +
                                                                   "<td>" + Reg[3] + "</td>" +
                                                                   "<td>" + Reg[4] + "</td>" +
                                                                   "<td>" + Reg[5] + "</td>" +
                                                               "<tr>";

                                                         Response.Write(html);

                                                     }
                                                       %> 
                                                    
                                                    </tbody>
                                                <tfoot>
                                                  <tr>
                                                    <th>No. Transaccion</th>
                                                    <th>No. Solitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th>
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>
                                                  </tr>
                                                </tfoot>
                                              </table>                                                                                                                 
                                            </div>
                                         </div>
                                        <div class="row">
                                          <div class="col-sm-5">                                              
                                          </div>
                                          <div class="col-sm-7">                                      
                                           </div>
                                        </div>
                        </div><!-- /.box-body-->
                       </div><!-- /.box -->
                      </div><!-- /.col -->          
                    </div>

                  <!--  ********************* SOLICITUDES NO APROBADAS ********************* -->
          
                  <div class="cp_oculta" id="div_no_aprobadas">
                   <div class="col-md-14" runat="server" ID="Div1">              
                      <!-- Donut chart -->
                      <div class="box box-primary">
                        <div class="box-header with-border">
                          <i class="fa fa-thumbs-o-down"></i>
                          <h3 class="box-title">Detalle de Solicitudes No Aprobadas</h3>
                          <div class="box-tools pull-right">
                            <!--<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>-->
                            <!--<button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
                          </div>
                         </div>
                        <div class="box-body">                
                         <div class="dataTables_wrapper form-inline dt-bootstrap" id="example4_wrapper">
                                        <div class="row">
                                            <div class="col-sm-6">
                                            
                                            </div>
                                            <div class="col-sm-6">
                                                
                                            </div>
                                        </div>
                                            <div class="col-sm-6">  
                                                                                      
                                            </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-sm-12">
                                                 <table id="example4" class="table table-bordered dataTable">
                                                    <thead>
                                                  <tr role="row">
                                                    <th >No. Transaccion</th>
                                                    <th>No. Solicitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th> 
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>                        
                                                  </tr>
                                                </thead>
                                                <tbody>

                                                 <%
                                                     string html;
                                                     System.Data.DataTable tabla3 = new System.Data.DataTable();
                                                     SIAA_WEB.Clases.dashboard dash = new SIAA_WEB.Clases.dashboard();
                                                     tabla3 =  dash.CargaGrid_NoAprobadas();
                                                     foreach(System.Data.DataRow Reg in tabla3.Rows)
                                                     {
                                                         html = "<tr class=\"odd\" role=\"row\">" +
                                                                   "<td>" + Reg[0] + "</td>" +
                                                                   "<td>" + Reg[1] + "</td>" +
                                                                   "<td>" + Reg[2] + "</td>" +
                                                                   "<td>" + Reg[3] + "</td>" +
                                                                   "<td>" + Reg[4] + "</td>" +
                                                                   "<td>" + Reg[5] + "</td>" +
                                                               "<tr>";

                                                         Response.Write(html);

                                                     }
                                                       %> 
                                                    
                                                    </tbody>
                                                <tfoot>
                                                  <tr>
                                                    <th>No. Transaccion</th>
                                                    <th>No. Solitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th>
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>
                                                  </tr>
                                                </tfoot>
                                              </table>                                                                                                                 
                                            </div>
                                         </div>
                                        <div class="row">
                                          <div class="col-sm-5">                                              
                                          </div>
                                          <div class="col-sm-7">                                      
                                           </div>
                                        </div>   
                        </div><!-- /.box-body-->
                       </div><!-- /.box -->
                      </div><!-- /.col -->          
                    </div>

                  <!--  ********************* TOTAL SOLICITUDES ********************* -->

                  <div class="cp_oculta" id="div_Total_Sol">
                   <div class="col-md-14" runat="server" ID="vista_nuevos">              
                      <!-- Donut chart -->
                      <div class="box box-primary">
                        <div class="box-header with-border">
                          <i class="fa fa-database"></i>
                          <h3 class="box-title">Detalle Total de Solicitudes</h3>
                          <div class="box-tools pull-right">
                            <!--<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>-->
                            <!--<button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
                          </div>
                         </div>
                        <div class="box-body">                 
                            <div class="dataTables_wrapper form-inline dt-bootstrap" id="example3_wrapper">
                                        <div class="row">
                                            <div class="col-sm-6">
                                            
                                            </div>
                                            <div class="col-sm-6">
                                                
                                            </div>
                                        </div>
                                            <div class="col-sm-6">  
                                                                                      
                                            </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-sm-12">
                                                 <table id="example3" class="table table-bordered dataTable">
                                                    <thead>
                                                  <tr role="row">
                                                    <th >No. Transaccion</th>
                                                    <th>No. Solicitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th> 
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>                        
                                                  </tr>
                                                </thead>
                                                <tbody>

                                                 <%
                                                     string html;
                                                     System.Data.DataTable tabla4 = new System.Data.DataTable();
                                                     SIAA_WEB.Clases.dashboard dash = new SIAA_WEB.Clases.dashboard();
                                                     tabla4 =  dash.CargaGrid_Total();
                                                     foreach(System.Data.DataRow Reg in tabla4.Rows)
                                                     {
                                                         html = "<tr class=\"odd\" role=\"row\">" +
                                                                   "<td>" + Reg[0] + "</td>" +
                                                                   "<td>" + Reg[1] + "</td>" +
                                                                   "<td>" + Reg[2] + "</td>" +
                                                                   "<td>" + Reg[3] + "</td>" +
                                                                   "<td>" + Reg[4] + "</td>" +
                                                                   "<td>" + Reg[5] + "</td>" +
                                                               "<tr>";

                                                         Response.Write(html);

                                                     }
                                                       %> 
                                                    
                                                    </tbody>
                                                <tfoot>
                                                  <tr>
                                                    <th>No. Transaccion</th>
                                                    <th>No. Solitud</th>
                                                    <th>Modulo</th>
                                                    <th>ID Contribuyente</th>
                                                    <th>Usuario</th>
                                                    <th>Estatus</th>
                                                  </tr>
                                                </tfoot>
                                              </table>                                                                                                                 
                                            </div>
                                         </div>
                                        <div class="row">
                                          <div class="col-sm-5">                                              
                                          </div>
                                          <div class="col-sm-7">                                      
                                           </div>
                                        </div>
                        </div><!-- /.box-body-->
                       </div><!-- /.box -->
                      </div><!-- /.col -->          
                    </div> 
                  
          </section>

        </section><!-- /.content -->

     </form>     
      
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>    
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    
     <script>
         $(document).ready(function () {
            $("#example1").DataTable();
            $("#example2").DataTable();
            $("#example3").DataTable();
            $("#example4").DataTable();            
        });         
    </script>
</asp:Content>
