<?php
    
    include_once "conex/getall_user.php";

    if (isset($_REQUEST['guardar'])) {
      // include "conex/config.php";
      // $con=mysqli_connect($host,$user,$pass,$db);
      include "conex/editar.php";
      // $email=mysqli_real_escape_string($con, $_REQUEST['email']??'');
      // $nombre=mysqli_real_escape_string($con, $_REQUEST['nombre']??'');
      // $pass=md5(mysqli_real_escape_string($con, $_REQUEST['pass']??''));
      // $id=mysqli_real_escape_string($con, $_REQUEST['id']??'');
  
  
      // $query2="UPDATE usuarios SET
      // email='".$email."', pass='".$pass."', nombre='".$nombre."' 
      // WHERE id_usuarios= '".$id."';
      // ";
  
      // $result=mysqli_query($con,$query2);

        if ($result) {
            echo '<meta http-equiv="refresh" content="0; url=panel.php?modulo=usuarios&mensaje=Usuario '.$nombre.' Editado exitosamente" />';
        }else{
            ?>
            <div class="msj_error alert alert-danger" role="alert">
                <h4 class="alert-heading">Error</h4>
                Hay un problema al crear el usuario 
            </div>
            <?php
        }
    }
    $id=mysqli_real_escape_string($con, $_REQUEST['id']??'');

    include "conex/getone_user.php";

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Editar Usuario
        <!-- <small>advanced tables</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a ><i class="fa fa-shopping-cart"></i> Ecommerce</a></li>
        <!-- <li><a href="#">Tables</a></li> -->
        <li class="active">Usuarios</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <!-- <h3 class="box-title">Hover Data Table</h3> -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <form action="panel.php?modulo=editarUsuario" method="post">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="email" name="email" value="<?php echo $row2['email']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Password</label>
                        <input class="form-control" type="password" name="pass" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Nombre</label>
                        <input class="form-control" type="text" name="nombre" value="<?php echo $row2['nombre']; ?>" required>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="id" value="<?php echo $row2['id_usuarios']; ?>">
                        <button type="submit" class="btn btn-primary" name="guardar">Guardar</button>

                    </div>
                </form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

         
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

  