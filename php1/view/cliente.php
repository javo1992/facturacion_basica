<?php include('header.php'); ?>
<script type="text/javascript">
    $(document).ready(function () {
    	lista_cliente();
});

</script>
	<script src="../js/cliente.js"></script>		
<!-- Begin Page Content -->
<div class="page-wrapper">
      <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
          <div class="breadcrumb-title pe-3">Clientes</div>
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

      <div class="row">
        <div class="col-sm-2">
            <a class="btn btn-success btn-sm" href="detalle_cliente.php"><i class="fa fa-plus"></i> Nuevo</a>
        </div>
      </div>
      <br>
    <!-- <button onclick="eliminar_session()"> Cerrar</button> -->
    <div class="row">
    	<div class="col-sm-4">
    		<input type="text" name="query" id="query" class="form-control form-control-sm" onkeyup="lista_cliente()" placeholder="Nombre / CI / RUC">
    	</div>
    </div>
    <br>
    <div class="row" id="lista_clientes">
    	    	
    </div>
    
</div>
</div>
<?php include('footer.php'); ?>
           