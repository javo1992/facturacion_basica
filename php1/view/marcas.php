<?php include('./header2.php'); ?>
<script type="text/javascript">
  $( document ).ready(function() {

    paginacion('0-25');
    consultar_datos();
});

  var pagi = 50;
     
  function consultar_datos(id='')
  { 
    var marcas='';
   var parametros = 
    {
      'id':id,
      'pag':$('#txt_pag').val(),
    }
    $.ajax({
      data:  {parametros:parametros},
      url:   '../controlador/marcasC.php?lista=true',
      type:  'post',
      dataType: 'json',
      /*beforeSend: function () {   
           var spiner = '<div class="text-center"><img src="../../img/gif/proce.gif" width="100" height="100"></div>'     
         $('#tabla_').html(spiner);
      },*/
        success:  function (response) {    
         // console.log(response);   
        var pag = $('#txt_pag1').val().split('-');        
        var pag2 = $('#txt_pag').val().split('-');

        var pagi = '<li class="page-item" onclick="guias_pag(\'-\')"><a class="page-link" href="#"> << </a></li>';
        if($('#txt_numpag').val() =='')
        {
          $('#txt_numpag').val(response.cant / pag[1]);
        }
        if(response.cant > pag[1])
        {
           var num = response.cant / pag[1];
           if(num >10)
           {
            if(pag2[1]/pag[1] <= 10)
            {
            for (var i = 1; i < 11 ; i++) {
              var pos =pag[1]*i;
              var ini =pos-pag[1];  
              var pa = ini+'-'+pos;
              if($('#txt_pag').val()==pa){
               pagi+='<li class="page-item active" onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }else
              { 
                pagi+='<li class="page-item" onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }
            }
           }else
           {

               pagi+='<li class="page-item" onclick="paginacion(\'0-25\')"><a class="page-link" href="#">1</a></li>';
            for (var i = pag2[1]/25; i < (pag2[1]/25)+10 ; i++) {
              var pos =pag[1]*i;
              var ini =pos-pag[1];  
              var pa = ini+'-'+pos;
              if($('#txt_pag').val()==pa){
               pagi+='<li class="page-item active" onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }else
              { 
                pagi+='<li class="page-item" onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }
            }
           }
            pagi+='<li class="page-item" onclick="guias_pag(\'+\')"><a class="page-link" href="#"> >> </a></li>'
           }else
           { 
             
            for (var i = 1; i < num+1 ; i++) {
              var pos =pag[1]*i;
              var ini =pag[1]-pos;  
              var pa = ini+'-'+pos;
              if($('#txt_pag').val() == pa)
              {
               pagi+='<li class="page-item active"  onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }else
              {  
                pagi+='<li class="page-item"  onclick="paginacion(\''+pa+'\')"><a class="page-link" href="#">'+i+'</a></li>';
              }
            }
           }

        $('#pag').html(pagi);  

        }   
        
        // console.log(response.datos);
        $.each(response, function(i, item){

         // console.log('sss');
        marcas+='<tr><td>'+item.CODIGO+'</td><td><a href="detalle_marca.php?id='+item.ID_MARCA+'"><u>'+item.DESCRIPCION+'</u></a></td><td>';
        //   if($('#elimina').val()==1 || $('#dba').val()==1)
        // {
        //   marcas+='<button class="btn btn-danger" tittle="Eliminar" onclick="delete_datos(\''+item.ID_MARCA+'\')"><i class="fa fa-trash"></i></button>';
        // }if($('#editar').val()==1 || $('#dba').val()==1)
        // {
        //   marcas+='<button class="btn btn-primary" tittle="Editar" onclick="datos_col(\''+item.ID_MARCA+'\')" data-toggle="modal" data-target="#myModal"><i class="fa fa-paint-brush"></button>';
        // }
        marcas+='</td></tr>';
        });       

        console.log(marcas);
         $('#tbl_datos').html(marcas);        
      }
    });
  }

  function paginacion()
  { 
    var marcas='<li class="page-item"><a class="page-link" href="#">Previous</a></li>';
    $.ajax({
      // data:  {id:id},
      url:   '../controlador/marcasC.php?paginacion=true',
      type:  'post',
      dataType: 'json',
      /*beforeSend: function () {   
           var spiner = '<div class="text-center"><img src="../../img/gif/proce.gif" width="100" height="100"></div>'     
         $('#tabla_').html(spiner);
      },*/
        success:  function (response) {  
          var paginas = response/pagi;
          for (var i =1; i <= paginas; i++) {
             marcas+='<li class="page-item"><a class="page-link" href="#">'+i+'</a></li>';
          }
         console.log(paginas);
          
        // $.each(response, function(i, item){
        //  // console.log('sss');
        //  marcas+='<li class="page-item"><a class="page-link" href="#">1</a></li>';
        // });
        marcas+='<li class="page-item"><a class="page-link" href="#">Next</a></li>'       
         $('#pag').html(marcas);        
      }
    });
  }



  function buscar(buscare)
  {
     var marcas='';

    $.ajax({
      data:  {buscare:buscare},
      url:   '../controlador/marcasC.php?buscar=true',
      type:  'post',
      dataType: 'json',
      /*beforeSend: function () {   
           var spiner = '<div class="text-center"><img src="../../img/gif/proce.gif" width="100" height="100"></div>'     
         $('#tabla_').html(spiner);
      },*/
        success:  function (response) {    
        // console.log(response);   
        $.each(response, function(i, item){
          console.log(item);
        marcas+='<tr><td>'+item.CODIGO+'</td><td><a href="detalle_marca.php?id='+item.ID_MARCA+'"><u>'+item.DESCRIPCION+'</u></a></td><td>' //   
        marcas+='</td></tr>';
        });       
         $('#tbl_datos').html(marcas);           
      }
    });
  }
  

  function limpiar()
  {
      $('#codigo').val('');
      $('#descripcion').val('');
      $('#id').val('');
       $('#titulo').text('Nueva marca');
        $('#op').text('Guardar');
           

  }

function paginacion(num)
{
  $('#txt_pag').val(num);
  var pag = $('#txt_pag').val().split('-');
  var pos = pag[1]/25;
  consultar_datos();
  // alert(pos);
}
function guias_pag(tipo)
{

  var m1 =  $('#txt_pag').val().split('-');
  var m =  $('#txt_pag1').val().split('-');
  var pos = m1[1]/25;
  if (tipo=='+')
  {
    if(pos >= 10)
    {
       var fin =  m[1]*(pos+1);
       var ini = fin-m[1];
       $('#txt_pag').val(ini+'-'+fin);
       consultar_datos();

    }else{
    var fin =  m[1]*(pos+1);
    var ini = fin-m[1];
    $('#txt_pag').val(ini+'-'+fin);
    consultar_datos();
   }

  }else
  {
    if(pos == 1)
    {
      alert('esta en el inicio');
    }else
    {
       var fin =  m[1]*(pos-1);
       var ini = fin-m[1];
       $('#txt_pag').val(ini+'-'+fin); 
       consultar_datos();  
    }
  }
}
</script>
<div >
    <!-- Content Header (Page header) -->
    <br>
    <section class="content">
      <div class="container-fluid">
         <input type="hidden" id="txt_pag" name="" value="0-25">
              <input type="hidden" id="txt_pag1" name="" value="0-25">
              <input type="hidden" id="txt_numpag" name="">

         <div class="row">
            <div class="col-sm-12" id="btn_nuevo">
              <a href="detalle_marca.php" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Nuevo</a>
               <a href="#" class="btn btn-default btn-sm" id="excel_marcas" title="Informe en excel del total de Marcas"><i class="far fa-file-excel"></i> Total Marcas</a>
            </div>
             
          </div>
          <br>
          <div class="row">
             <div class="col-sm-4">
               <input type="" name="" id="txt_buscar" onkeyup="buscar($('#txt_buscar').val())" class="form-control form-control-sm" placeholder="Buscar marca">
            </div>            
          </div>
         <div class="row justify-content-end">
            <nav aria-label="Page navigation example">
              <ul class="pagination pagination-sm" id="pag">
                
              </ul>
            </nav>           
          </div>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Codigo</th>
                  <th>Descripcion</th>
                  <th></th>
                </tr>
              </thead>
              <tbody id="tbl_datos">
               
              </tbody>
            </table>
          </div>

             </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>


        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="titulo">Nueva marca</h3>
      </div>
      <div class="modal-body">
        <input type="hidden" name="id" id="id" class="form-control" hidden="">
        Codigo <br>
        <input type="input" name="codigo" id="codigo" class="form-control">
        Descripcion <br>
        <input type="input" name="descripcion" id="descripcion" class="form-control">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="op" onclick="editar_insertar()">Guardar</button>
      </div>
    </div>
  </div>
</div>

        <?php //include('./footer.php'); ?>
     