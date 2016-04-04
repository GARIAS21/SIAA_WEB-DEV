<%@ Page Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="reg_nueva_partida.aspx.cs" Inherits="SIAA_WEB.views.Reg_familiar.reg_nueva_partida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <section class="content-header">
            <h1>Registro Familiar
            <small>Partida de Nacimiento</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="#">Registro Familiar</a></li>
                <li class="active">Nueva Partida</li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12 col-md-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <i class="fa  fa-file-text-o"></i>
                            <h3 class="box-title">Nueva Partida de Nacimiento</h3>
                            <div class="box-tools pull-right">
                            </div>
                        </div>
                        <div class="box-body">

                            <div class="nav-tabs-custom">
                                <!-- Menu -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_1" data-toggle="tab">Datos Generales</a></li>
                                    <li><a href="#tab_2" data-toggle="tab">Datos Padres</a></li>
                                    <li><a href="#tab_3" data-toggle="tab">Datos Familia</a></li>
                                </ul>
                                <div class="tab-content">

                                    <!-- Generales -->
                                    <div class="tab-pane active" id="tab_1">                                        
                                        <div class="box-body">
                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputFolio">No. de Folio:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_folio" runat="server" />
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputFirstName">Primer Nombre:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_pnombre" runat="server" />
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputSecondName">Segundo Nombre:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_snombre" runat="server" />
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputFirstLastName">Primer Apellido:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_papellido" runat="server" />
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputSecondLastName">Segundo Apellido:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_sapellido" runat="server" />
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputBorndate">Fecha Nacimiento:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_fecha" runat="server" data-inputmask="yyyy-mm-dd" />
                                                    <br />
                                                </div>
                                                
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-4 control-label" for="inputHour">Hora Nacimiento:</label>
                                                <div class="col-xs-8 col-sm-6">
                                                    <asp:TextBox CssClass="form-control input-sm" ID="general_hora" runat="server" data-inputmask="hh:mm:ss" />
                                                    <br />
                                                </div>
                                            </div>                                        
                                          </div>
                                        <!-- Boton Guardar-->
                                        <div class="box-footer">
                                            <div class="form-group">
                                                <li class="btn btn-danger" >Continuar</li>
                                            </div>                                        
                                        </div>
                                    </div>

                                    <!-- padres -->
                                    <div class="tab-pane" id="tab_2">
                                    <div class:"box-body">
                                        <div class="form-group">
                                            <div class="box box-success">
                                                <div class="box-header">
                                                    <h4 class="box-title">Datos de Padre</h4>
                                                </div>
                                                <div class="box-body">
                                                    <label class="col-sm-4 control-label" for="inputFolio">NIT:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_nit" runat="server" />
                                                        <br />
                                                        </div>

                                                    <label class="col-sm-4 control-label" for="inputFolio">DUI:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_dui" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Primer Nombre:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_1nombre" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Segundo Nombre:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_2nombre" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Primer Apellido:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_1apellido" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Segundo Apellido:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_2apellido" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Fecha Nacimiento:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_nacimiento" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Departamento:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_depto" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Municipio:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_muni" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Profesion/Oficio:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="padre_profesion" runat="server" />
                                                        <br />
                                                        </div>
                                                </div>
                                             </div>
                                            <br />
                                            <div class="box box-default">
                                                <div class="box-header">
                                                    <h4 class="box-title">Datos de Madre</h4>
                                                </div>
                                                <div class="box-body">
                                                    <label class="col-sm-4 control-label" for="inputFolio">NIT:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_nit" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">DUI:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_dui" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Primer Nombre:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_1nombre" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Segundo Nombre:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_2nombre" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Primer Apellido:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_1apellido" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Segundo Apellido:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_2apellido" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Fecha Nacimiento:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_nacimiento" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Departamento:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_depto" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Municipio:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_muni" runat="server" />
                                                        <br />
                                                        </div>
                                                    <label class="col-sm-4 control-label" for="inputFolio">Profesion/Oficio:</label>
                                                        <div class="col-xs-8 col-sm-6">
                                                        <asp:TextBox CssClass="form-control input-sm" ID="madre_profesion" runat="server" />
                                                        <br />
                                                        </div>
                                                </div>
                                             </div>
                                        </div>
                                    </div>
                                    <div class:"box-footer">

                                    </div>

                                </div>

                                    <!-- familia -->
                                    <div class="tab-pane" id="tab_3">
                                    <div class:"box-body">

                                    </div>
                                    <div class:"box-footer">

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
