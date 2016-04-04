<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="SIAA_WEB.views.Core.registrar" %>

<!DOCTYPE html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIAA | Registrar</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
      <link href="../../bootstrap/font-awesome/font-awesome.min.css" rel="stylesheet" />    
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../bootstrap/css/ionicons.min.css">    
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<html>
<body class="hold-transition register-page">
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
        <div class="callout callout-info" runat="server" ID="alerta_pass" visible="false">
              <h4>Notificacion!</h4>
              <p><asp:Label runat="server" ID="pass"/></p>
      </div>
        <div class="callout callout-danger" runat="server" ID="alerta_error" visible="false">
              <h4>Notificacion!</h4>
              <p><asp:Label runat="server" ID="error"/></p>
      </div>
     <div class="register-box">
        <div class="register-logo">
            <img class="center" alt="logo" src="../../img/logo-2.png"  width="180" height="200">
        </div>

      <div class="register-box-body">
        <p class="login-box-msg">Formulario de Registro</p>        
          
          <div class="form-group has-feedback">            
              <label for="exampleInputEmail1">Nombre</label>
            <asp:TextBox CssClass="form-control" ID="id_nombre" runat="server" TabIndex="0" />
            <span class="glyphicon glyphicon-pencil form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">            
              <label for="exampleInputEmail1">DUI</label>
            <asp:TextBox CssClass="form-control" ID="id_dui" runat="server" TabIndex="0" />
            <span class="glyphicon glyphicon-pencil form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">            
              <label for="exampleInputEmail1">NIT</label>
            <asp:TextBox CssClass="form-control" ID="id_nit" runat="server" TabIndex="0" />
            <span class="glyphicon glyphicon-pencil form-control-feedback"></span>
          </div>

          <%--<div class="form-group has-feedback">            
              <label for="exampleInputEmail1">Rol de Usuario</label>            
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            <span class="glyphicon glyphicon-th-list form-control-feedback"></span>
          </div>--%>

          <div class="form-group has-feedback">
              <label for="exampleInputEmail1">Usuario</label>
            <asp:TextBox CssClass="form-control" ID="id_usuario" runat="server" TabIndex="0"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
              <label for="exampleInputEmail1">Clave</label>
            <asp:TextBox CssClass="form-control" ID="id_clave" runat="server" TabIndex="0" TextMode="Password"/>            
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback" >
              <label for="exampleInputEmail1">Reingrese Clave</label>
              <asp:TextBox CssClass="form-control" ID="id_clavere" runat="server" TabIndex="0" TextMode="Password"/>              
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
              <label for="exampleInputEmail1">Seleccione su foto de Perfil</label>
              <input type=file id=File1 name=File1 runat="server" onChange="load_image(this.id,this.value)">
          </div> 
          
          <div class="row">
            <div class="col-xs-10">
              <div class="checkbox icheck">
                <label>                    
                  <asp:CheckBox runat="server" ID="terminos" /> Estoy deacuerdo con los <a href="#">terminos</a>
                </label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-6">  
                <asp:Button CssClass ="btn btn-primary btn-block btn-flat" ID="id_sesion" runat="server" Text="Crear Usuario" OnClick="Submit1_ServerClick"/>  
            </div><!-- /.col -->
          </div>
        

        <a href="../../login.aspx" class="text-center">Soy un usuario registrado</a>
    
        </div>
     </div>
        <br />
    </form>

        <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>

    <script type="text/javascript">
function load_image(id,ext)
{
   if(validateExtension(ext) == false)
   {
      alert("Solo se permite foto de perfil en formato JPG");
      /**document.getElementById("imagePreview").innerHTML = "";**/
      document.getElementById("file").focus();
      return;
   }
}

function validateExtension(v)
{
      var allowedExtensions = new Array("jpg","JPG");
      for(var ct=0;ct<allowedExtensions.length;ct++)
      {
          sample = v.lastIndexOf(allowedExtensions[ct]);
          if(sample != -1){return true;}
      }
      return false;
}
</script>
</body>
</html>
