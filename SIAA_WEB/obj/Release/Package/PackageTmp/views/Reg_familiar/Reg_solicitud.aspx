<%@ Page Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="Reg_solicitud.aspx.cs" Inherits="SIAA_WEB.Reg_solicitud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <!-- Cabecera de la pagina-->
        <section class="content-header">
            <h1>Registro Familiar
            <small>Ingreso de Solicitudes</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.aspx"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="index.aspx">Registro Familiar</a></li>
                <li class="active">Solicitudes</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <!-- Nueva Solicitud -->
                <div class="col-xs-6" runat="server" id="vista_nuevos">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <i class="fa  fa-file-text-o"></i>
                            <h3 class="box-title">Nueva Solicitud</h3>
                            <div class="box-tools pull-right">
                            </div>
                        </div>
                        <div class="box-body">

                            <div class="tab-pane active" id="tab_1">
                                <b>Recien Nacido:</b>
                                <label>No. de Folio:</label>
                                <asp:TextBox CssClass="form-control" ID="id_dui" runat="server" />
                            </div>

                        </div>

                    </div>
                </div>


                <!-- REQUISITOS-->
                <div class="col-xs-6">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">Requsitos por Solicitud</h3>
                        </div>
                        <div class="box-body">
                            <div class="box-group" id="accordion">

                                <!-- Caja 1 -->
                                <div class="panel box box-primary">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Registro de Nacimiento
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="box-body">

                                            <!-- Descripcion -->
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Descripcion</h3>
                                                </div>
                                                <div class="panel-body">
                                                </div>
                                            </div>

                                            <!-- Duracion -->
                                            <div class="">
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Duracion del Tramite</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>5 dias habiles despues de haberse inscito el nacimiento, podra solicitar la partida de nacimiento.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Requisitos -->
                                            <div class="panel panel-success">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Requisitos</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <span class="badge">1</span>
                                                    El padre o la madre del recien nacido estan obligados a informar al registrador del estado familiar del municipio donde ocurrio el nacimiento o de el domicilio de estos o faltas de estas tendra la misma obligacion del pariente mas procximo del recien nacido 
                                                <br>
                                                    <br>
                                                    <span class="badge">2</span>
                                                    Plantar del recien nacido emitido por el hospital y documento unico de identidad de los padres o del pariente mas procximo que proporcione los datos en original y copia 
                                                <br>
                                                    <br>
                                                </div>
                                            </div>

                                            <!-- Multas -->
                                            <div class="panel panel-danger">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Multas o Infracciones</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <span class="badge">-</span>
                                                    El registro podra realizarlo dentro de los noventa dias habiles siguientes a aquel que ocurrio el nacimiento.
                                                <br>
                                                    <span class="badge">-</span>
                                                    Transcurridos 90 dias habiles a un nacimiento y hasta 7 años, podra el registro previo pago de una multa de $2.85, si es particular o $5.71, si el informante es funcionario o notario.
                                                <br>
                                                    <span class="badge">-</span>
                                                    transcurridos 7 años a un nacimiento que no ha sido inscrito solo podra realizarse el registro mediante una actuacion notarian o judicial segun el caso.
                                                <br>
                                                </div>
                                            </div>

                                            <!-- Horarios -->
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Horarios de Atencion</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <span class="badge">-</span>
                                                    De lunes a viernes de 8:00am a 12:20pm y 1:00pm a 4:00pm Oficinas Centrales y Delegaciones Distritales.
                                                <br>
                                                    <span class="badge">-</span>
                                                    De Lunes a Sabado 8:30am a 3:30pm Hospitales.
                                                <br>
                                                </div>
                                            </div>

                                            <!-- Costos -->
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Costos</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <span class="badge">-</span>
                                                    No tiene costos
                                                <br>
                                                </div>
                                            </div>

                                            <!-- Oficinas -->
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Oficina Responsable</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <span class="badge">-</span>
                                                    Hospital Nacional de maternidad área registro del Estado Familiar de la alcaldia  municipal de san salvador tel 25298200 ext 2290.
                                                <br>
                                                    <span class="badge">-</span>
                                                    Hospital 1º de mayo del isss area del registro nacional de la alcaldia municipal de san salvador tel.: 25298200 ext 2290.
                                                <br>
                                                    <span class="badge">-</span>
                                                    Registro del estado familiar, seccion asentamientos oficinas centrales alameda juan pablo.
                                                <br>
                                                </div>
                                            </div>


                                        </div>
                                    </div>

                                    <!-- Caja 2 -->
                                    <div class="panel box box-danger">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Constancia de Partida de Nacimiento
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse">
                                            <div class="box-body">

                                                <!-- Descripcion -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Descripcion</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        Se necesita un Niño/@ 
                                                    </div>
                                                </div>

                                                <!-- Duracion -->
                                                <div class="">
                                                    <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">Duracion del Tramite</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>Dos dias habiles despues de su presentacion.</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Requisitos -->
                                                <div class="panel panel-success">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Requisitos</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">1</span>
                                                        Llenar solicitud. 
                                                <br>
                                                        <br>
                                                        <span class="badge">2</span>
                                                        Constancia de nacimiento expedida por el hospital, en original y copia.
                                                <br>
                                                        <br>
                                                        <span class="badge">3</span>
                                                        Documentos unicos de identidad de los padres, en original y copia.
                                                <br>
                                                        <br>
                                                        <span class="badge">4</span>
                                                        Constancia de no registro de nacimiento, expedida por el registro nacional de las personal naturales (RNPN), en original y copia.
                                                <br>
                                                        <br>
                                                        <span class="badge">5</span>
                                                        Tarjeta de vacunas de unidad de salud o constancia de estudios, en original y copia.
                                                <br>
                                                        <br>
                                                    </div>
                                                </div>

                                                <!-- Horarios -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Horarios de Atencion</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        De lunes a viernes de 8.00 am a 4:00 pm. sin cerrar al mediadia.
                                                <br>
                                                    </div>
                                                </div>

                                                <!-- Costos -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Costos</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        Todo tipo de certificaciones y constancias extendida por el funcionario competente. $3.00
                                                <br>
                                                    </div>
                                                </div>

                                                <!-- Oficinas -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Oficina Responsable</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        Registro de Estado Familiar Oficinas Centrales Alameda Juan Pablo II, Avenida Cuscatancingo, #320 tel. 22116000 ext. 1279.
                                                <br>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <!-- Caja 3 -->
                                    <div class="panel box box-success">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Constancia de Matrimonio
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse">
                                            <div class="box-body">

                                                <!-- Descripcion -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Descripcion</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        Se necesita un Niño/@ 
                                                    </div>
                                                </div>

                                                <!-- Duracion -->
                                                <div class="">
                                                    <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">Duracion del Tramite</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>Dos dias habiles despues de su presentacion.</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Requisitos -->
                                                <div class="panel panel-success">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Requisitos</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">1</span>
                                                        Llenar solicitud. 
                                                <br>
                                                        <br>
                                                        <span class="badge">2</span>
                                                        Documento que demuestre estar casado.
                                                <br>
                                                        <br>
                                                        <span class="badge">3</span>
                                                        Partida de Nacimiento, en original y copia.
                                                <br>
                                                        <br>
                                                        <span class="badge">4</span>
                                                        Constancia de no Resgistro de Partida de Matrimonio, Expendida por el Registro Nacional de las Personas Naturales (RNPN), en original y copia.
                                                <br>
                                                        <br>
                                                        <span class="badge">5</span>
                                                        Documento Unico de Identida del Solicitante, en original y copia.
                                                <br>
                                                        <br>
                                                    </div>
                                                </div>

                                                <!-- Horarios -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Horarios de Atencion</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        De lunes a viernes de 8.00 am a 4:00 pm. sin cerrar al mediadia.
                                                <br>
                                                    </div>
                                                </div>

                                                <!-- Costos -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Costos</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        Todo tipo de certificaciones y constancias extendida por el funcionario competente. $3.00
                                                <br>
                                                    </div>
                                                </div>

                                                <!-- Oficinas -->
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Oficina Responsable</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <span class="badge">></span>
                                                        Registro de Estado Familiar Oficinas Centrales Alameda Juan Pablo II, Avenida Cuscatancingo, #320 tel. 22116000 ext. 1279.
                                                <br>
                                                    </div>
                                                </div>



                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</asp:Content>
