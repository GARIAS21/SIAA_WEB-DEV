<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lockscreen.aspx.cs" Inherits="SIAA_WEB.lockscreen" %>


<!DOCTYPE html>

<%@ OutputCache Location="None" VaryByParam="None" %>

<html>
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIAA | Lockscreen</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/bootstrap/css/bootstrap.min.css") %>">    
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/bootstrap/font-awesome/font-awesome.min.css") %>">
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/bootstrap/css/ionicons.min.css") %>">
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/dist/css/AdminLTE.min.css") %>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition lockscreen">

    <!-- Automatic element centering -->
    <div class="lockscreen-wrapper">
      <div class="lockscreen-logo">
         <img class="center" alt="logo" src="img/logo-2.png"  width="180" height="200">
      </div>
      <!-- User name -->
      <div class="lockscreen-name"> 
          <asp:Label runat="server" id="imagen_lock"/>
      </div>

      <!-- START LOCK SCREEN ITEM -->
      <div class="lockscreen-item">
        <!-- lockscreen image -->
        <div class="lockscreen-image">
            <asp:Image runat="server" ID="lock_imagen" />
        </div>
        <!-- /.lockscreen-image -->

        <!-- lockscreen credentials (contains the form) -->
        <div class="lockscreen-credentials">
          <div class="input-group">            
            <asp:TextBox CssClass="form-control" ID="id_clave" runat="server" TextMode="Password"/>  
            <div class="input-group-btn">              
                <asp:Button CssClass ="btn fa fa-arrow-right text-muted" ID="id_sesion" runat="server" OnClick="id_sesion_Click" />         
            </div>
          </div>
        </div><!-- /.lockscreen credentials -->
      </div><!-- /.lockscreen-item -->
      <div class="help-block text-center">
          Ingrese su clave para continuar con su Sesion
      </div>
      <div class="text-center">
        <a href="login.aspx">o inicie sesion con un usuario diferente!</a>
      </div>
      <div class="lockscreen-footer text-center">
        Copyright &copy; 2016 <b><a href="siaa-dev.azurewebsites.net" class="text-black">Grupo 01 | ASI 2</a></b><br>
        Todos los derechos reservados
      </div>
    </div><!-- /.center -->

    <!-- jQuery 2.1.4 -->
   <script src='<%=Page.ResolveUrl("~/plugins/jQuery/jQuery-2.1.4.min.js") %>'></script>
    <!-- Bootstrap 3.3.5 -->
   <script src='<%=Page.ResolveUrl("~/bootstrap/js/bootstrap.min.js") %>'></script>
  </body>
</html>

