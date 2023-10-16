<?php include('header.php'); ?>
<script type="text/javascript">
    $(document).ready(function () {
     // series();
     lista_nota_credito()
});

</script>
	<script src="../js/nota_credito.js"></script>		
<!-- Begin Page Content -->
<div class="page-wrapper">
      <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
          <div class="breadcrumb-title pe-3">Notas de Credito</div>
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



      <!-- <h1 class="h3 mb-3"><strong>Notas de Credito</strong></h1> -->
    <!-- <button onclick="eliminar_session()"> Cerrar</button> -->
    <div class="row">
    	<div class="col-sm-2">
    		<a class="btn btn-success btn-sm" href="nota_credito.php"><i class="bx bx-plus me-0 p-0"></i> Nuevo</a>
    	</div>
    </div>
     <div class="row">
    	<div class="col-sm-3">
    		<b>Cliente</b>
    		<input type="text" name="txt_query" id="txt_query" class="form-control form-control-sm" placeholder="Cliente" onkeyup="lista_nota_credito()">
    	</div>
    	<div class="col-sm-2">
    		<b>No nota Credito</b>
    		<input type="text" name="txt_num_fac" id="txt_num_fac" class="form-control form-control-sm" placeholder="No factura" onkeyup="lista_nota_credito()">
    	</div>
    	<div class="col-sm-2">
    		<b>Desde</b>
    		<input type="date" name="txt_desde" id="txt_desde" class="form-control form-control-sm" value="<?php echo date('Y-m-d');?>" onblur="lista_nota_credito()">
    	</div>
    	<div class="col-sm-2">
    		<b>Hasta</b>
    		<input type="date" name="txt_hasta" id="txt_hasta" class="form-control form-control-sm" onblur="lista_nota_credito()">
    	</div>
    	<div class="col-sm-2">
    		<b>Serie</b>
    		<select class="form-control form-control-sm" id="ddl_serie" name="ddl_serie" onchange="lista_nota_credito()">
    			<option value="">Serie</option>
    		</select>
    	</div>
    </div>
    <br>
    <div class="row">
         <div class="col-lg-12">
            <!-- Basic Card Example -->
            <div class="card shadow mb-8">
               <!--  <div class="card-header">
                    <h5 class="card-title">Lista de Notas de credito</h5>
                </div> -->
                <div class="card-body" style="padding-top: 0px;">
                	<table class="table table-bordered table-sm table-striped " id="dataTable">
                        <thead>                            
                            <th width="15%"></th>
                        	<th>Cliente</th>
                        	<th>Fecha</th>
                        	<th>Nota credito</th>
                        	<th>Serie</th>
                        	<th width="8%">Estado</th>
                        </thead>
                        <tbody id="lista_notas">
                        	
                        </tbody>
                    </table>
                </div>
            </div>

        </div>                        
    </div>
</div>
</main>
<?php include('footer.php'); ?>
           