<?php include('header.php'); ?>
<script type="text/javascript">
    $(document).ready(function () {
     series();
     cargar_facturas();
});

</script>
	<script src="../js/lista_facturas.js"></script>		
<div class="page-wrapper">
  <div class="page-content">
    <!--breadcrumb-->
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
      <div class="breadcrumb-title pe-3">Facturas</div>
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


    <div class="row">
    	<div class="col-sm-2">
    		<a class="btn btn-success btn-sm" href="cliente_pedido.php?tipo=FA"><i class="bx bx-plus me-0"></i> Nuevo</a>
    	</div>
    </div>
     <div class="row">
    	<div class="col-sm-3">
    		<b>Cliente</b>
    		<input type="text" name="txt_query" id="txt_query" class="form-control form-control-sm" placeholder="Cliente" onkeyup="cargar_facturas()">
    	</div>
    	<div class="col-sm-2">
    		<b>No Factura</b>
    		<input type="text" name="txt_num_fac" id="txt_num_fac" class="form-control form-control-sm" placeholder="No factura" onkeyup="cargar_facturas()">
    	</div>
    	<div class="col-sm-2">
    		<b>Desde</b>
    		<input type="date" name="txt_desde" id="txt_desde" class="form-control form-control-sm" value="<?php echo date('Y-m-d');?>" onblur="cargar_facturas()">
    	</div>
    	<div class="col-sm-2">
    		<b>Hasta</b>
    		<input type="date" name="txt_hasta" id="txt_hasta" class="form-control form-control-sm" onblur="cargar_facturas()">
    	</div>
    	<div class="col-sm-2">
    		<b>Serie</b>
    		<select class="form-select form-select-sm" id="ddl_serie" name="ddl_serie" onchange="cargar_facturas()">
    			<option value="">Serie</option>
    		</select>
    	</div>
    </div>
    <br>
    <div class="row">
         <div class="col-lg-12">
            <!-- Basic Card Example -->
            <div class="card shadow mb-8">
                <div class="card-header">
                    <h5 class="card-title">Lista de facturas</h5>
                </div>
                <div class="card-body" style="padding-top:0px">
                	<table class="table table-bordered dataTable table-sm" id="tbl_facturas">
                        <thead>                            
                            <th width="15%"></th>
                        	<th>Cliente</th>
                        	<th>Fecha</th>
                        	<th>Factura</th>
                        	<th>Serie</th>
                        	<th class="text-right">Total</th>
                        	<th width="8%">Estado</th>
                        </thead>
                        <tbody id="lista_facturas">
                        	
                        </tbody>
                    </table>
                </div>
            </div>

        </div>                        
    </div>
</div>
</div>
<?php include('footer.php'); ?>
           