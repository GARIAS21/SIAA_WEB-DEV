<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SIAA_WEB.login" %>

<!DOCTYPE html>
<html>
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIAA | Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
      <link href="bootstrap/font-awesome/font-awesome.min.css" rel="stylesheet" />    
    <!-- Ionicons -->
    <link rel="stylesheet" href="bootstrap/css/ionicons.min.css">    
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="hold-transition login-page">
      

      <div class="callout callout-danger" runat="server" ID="alerta_error" visible="false">
              <h4>Error!</h4>
              <p><asp:Label runat="server" ID="error"/></p>
      </div>

    <div class="login-box">
      <div class="login-logo">
        <a class="center" id="logo" href="#">
            <img class="center" alt="logo" src="img/logo-2.png"  width="180" height="200">
        </a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Inicia Sesion para Continuar</p>

        <!-- *********************************************************************************/ -->
        <form runat="server">

          <div class="form-group has-feedback">
              <asp:TextBox CssClass="form-control" ID="id_usuario" runat="server" TabIndex="0"/>                        
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
              <asp:TextBox CssClass="form-control" ID="id_clave" runat="server" TextMode="Password" TabIndex="1"/>            
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">              
            </div><!-- /.col -->
            <div class="col-xs-6">
                <asp:Button CssClass ="btn btn-primary btn-block btn-flat" ID="id_sesion" runat="server" Text="Iniciar Sesion" OnClick="id_sesion_Click"  TabIndex="2"/>              
                <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Recordar Usuario
                </label>
              </div>
            </div>
              <!-- /.col -->
              
          </div>
        </form>

          <!-- *********************************************************************************/ -->

          <br />

        <a href="#">Olvide mi Clave</a><br>
        <a href="views/core/registrar.aspx" class="text-center">Registra nuevo usuario</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>