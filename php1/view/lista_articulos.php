<?php include('header.php'); ?>
<script type="text/javascript">
    $(document).ready(function () {

        list_articulos();
        categorias();
     });
</script>
<script src="../js/lista_articulos.js"></script> 
<style type="text/css">
</style>
<div class="page-wrapper">
      <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
          <div class="breadcrumb-title pe-3">Lista de Articulos</div>
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

    <div class="card">
        <div class="card-body">
             <div class="row">
                <div class="col-sm-4">
                    <a class="btn btn-success btn-sm" style="border: 1px solid;" href="detalle_articulos.php"><i class="bx bx-plus me-0"></i> Nuevo</a>     
                    <!-- <a class="btn btn-primary btn-sm" style="border: 1px solid;" href="alimentar_stock.php"><i class="bx bx-plus me-0"></i> Alimentar stock</a> -->
                </div>
            </div>            
        </div>
    </div>
   

    <div class="card">
        <div class="card-body">
             <div class="row">
              <div class="col-lg-12">
            <!-- Basic Card Example -->
                    <div class="row">                        
                        <div class="col-sm-2">
                            <b>Referencia</b>
                            <input type="text" name="txt_ref" id="txt_ref" class="form-control form-control-sm" onkeyup="list_articulos()">
                        </div>
                        <div class="col-sm-5">
                            <b>Producto</b>
                            <input type="text" name="txt_query" id="txt_query" class="form-control form-control-sm" onkeyup="list_articulos()">
                        </div>
                        <div class="col-sm-4">
                            <b>Categoria</b><br>

                            <div class="input-group">
                                <select class="form-control-sm form-control form-select" id="ddl_categoria" name="ddl_categoria" onchange="list_articulos()" style="width: 80%;" >
                                    <option value="">Categoria</option>
                                </select>
                                <button class="btn btn-outline-secondary btn-sm p-0" type="button" id="button-addon2" onclick="limpiar_cate()"><i class="bx bx-x me-0"></i></button>
                            </div>
                            
                        </div>            
                    </div> 
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-striped table-bordered table-sm" id="tbl_articulos">
                                <thead>
                                    <th width="7%">Item</th>
                                    <th width="10%">Referencia</th>
                                    <th width="30%">Producto</th>
                                    <th width="7%">Stock</th>
                                    <th width="7">Medida</th>
                                    <th width="7%">Peso</th>
                                    <th>Localizacion</th>  
                                    <th>Categoria</th>                                    
                                </thead>
                                <tbody id="tbl_productos">
                                   
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>                        
    </div>
    </div>
</div>
<style type="text/css">
</style>

<?php include('footer.php'); ?>