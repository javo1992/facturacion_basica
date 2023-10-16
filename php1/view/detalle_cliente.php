<?php include('header.php'); ?>
<script type="text/javascript">
    $(document).ready(function () {
      id = '<?php if(isset($_GET['id'])){ echo $_GET['id'];}  ?>';
      if(id!='')
      {
        detalle_cliente(id);
      }
});

</script>
  <script src="../js/cliente.js"></script>  

<div class="page-wrapper">
      <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
          <div class="breadcrumb-title pe-3">Detalle cliente</div>
          <div class="ps-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"></li>
              </ol>
            </nav>
          </div>         
        </div>

        <hr>


        <div class="container-fluid p-0">
          <div class="row">
            <div class="col-sm-10">       
              <a class="btn btn-default btn-sm" style="border: 1px solid;" href="cliente.php"><i class="bx bx-arrow-back"></i> Regresar</a>                    
            </div>
              <div class="col-sm-2 text-end">
              </div>                    
          </div>
          <br>
          <div class="row">
            <div class="col-md-4 col-xl-3">
              <div class="card mb-3">                
                <form method="post" action="#" enctype="multipart/form-data">
                <div class="card-body text-center">
                  <img src="../img/clientes/sin_foto.jpg" id="foto_cliente" alt="Christina Mason" class="img-fluid rounded-circle mb-2" width="128" height="128">
                  <h5 class="card-title mb-0" id="lbl_nombre"></h5>
                  <div>
                    <input type="file" name="file_img" id="file_img" class="form-control form-control-sm">
                    <button class="btn btn-primary btn-sm" id="btn_upload" type="button"> Cargar imagen</button>
                  </div>
                </div>
              </form>
               
              </div>
            </div>

            <div class="col-md-8 col-xl-9">
              <div class="card">            
                <div class="card-body h-100">

                  <h5 class="card-title mb-0">Datos personales</h5>
                  <form id="form_datos">
                  <div class="row">
                    <input type="hidden" name="txt_id" id="txt_id">                    
                    <input type="hidden" name="txt_tipo" id="txt_tipo" value="C">
                     <div class="col-sm-4">
                      <b>CI / RUC</b>
                      <input type="text" name="txt_ci" id="txt_ci" class="form-control-sm form-control" onkeyup="num_caracteres('txt_ci',13)" onblur="validar_ci_ruc('txt_ci')" placeholder="Ingrese numero de cedula">
                    </div>
                    <div class="col-sm-8">
                      <b>Nombre</b>
                      <input type="" name="txt_nombre" id="txt_nombre" class="form-control-sm form-control">
                    </div>
                    <div class="col-sm-4">
                      <b>Email</b>
                      <input type="text" id="txt_email" name="txt_email" class="form-control-sm form-control" onblur ="validador_correo('txt_email')" autocomplete="off">
                    </div>
                    <div class="col-sm-3">
                      <b>Telefono</b>
                      <input type="" name="txt_telefono" id="txt_telefono" class="form-control-sm form-control"  onkeyup="num_caracteres('txt_telefono',10)">
                    </div>
                    <div class="col-sm-5">
                      <b>Razon Social</b>
                      <input type="" name="txt_razon" id="txt_razon" class="form-control-sm form-control">
                    </div>
                    <div class="col-sm-12">
                      <b>Direccion</b>
                      <textarea class="form-control-sm form-control" style="resize:none;" rows="3" name="txt_direccion" id="txt_direccion" ></textarea>
                    </div>
                  </div>
                  </form>
                  <br>
                  <div class="modal-footer">
                    <br>
                    <button class="btn btn-danger btn-sm" style="display: none;" id="btn_inactivar" type="button" onclick="cambiar_estado('I')">Inactivar</button>
                    <button class="btn btn-success btn-sm" style="display: none;" id="btn_activar" type="button" onclick="cambiar_estado('A')">Activar</button>
                    <button class="btn btn-primary btn-sm" type="button" onclick="guardar_editar();">Guardar</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
<?php include('footer.php'); ?>