// tipo_usuario();
$(document).ready(function () {

    tipo_usuario();
	empresa();	

    $("#subir_imagen").on('click', function() {
       
     var fileInput = $('#file_img').get(0).files[0];
  console.info(fileInput);
  
      if(fileInput=='')
      {
        Swal.fire('','Seleccione una imagen','warning');
        return false;
      }

        var formData = new FormData(document.getElementById("form_img"));
         $.ajax({
            url: '../controlador/empresaC.php?cargar_imagen=true',
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            dataType:'json',
         // beforeSend: function () {
         //        $("#foto_alumno").attr('src',"../../img/gif/proce.gif");
         //     },
            success: function(response) {
               if(response==-1)
               {
                 Swal.fire(
                  '',
                  'Algo extraño a pasado intente mas tarde.',
                  'error')

               }else if(response ==-2)
               {
                  Swal.fire(
                  '',
                  'Asegurese que el archivo subido sea una imagen.',
                  'error')
               }else
               {
                $('#file_img').empty();
               empresa();                
               } 
            }
        });
    });

  //subir certificados

    $("#btn_certificados").on('click', function() {
     var fileInput = $('#file_certificado').get(0).files[0];  
      if(fileInput=='')
      {
        Swal.fire('','Seleccione el certificado','warning');
        return false;
      }

        var formData = new FormData(document.getElementById("form_certi"));
         $.ajax({
            url: '../controlador/empresaC.php?cargar_certi=true',
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            dataType:'json',
         // beforeSend: function () {
         //        $("#foto_alumno").attr('src',"../../img/gif/proce.gif");
         //     },
            success: function(response) {
               if(response==-1)
               {
                 Swal.fire(
                  '',
                  'Algo extraño a pasado intente mas tarde.',
                  'error')

               }else if(response ==-2)
               {
                  Swal.fire(
                  '',
                  'Asegurese que el archivo subido sea un archivo p12.',
                  'error')
               }else
               {
                $('#file_certificado').empty();
                empresa();                
               } 
            }
        });
    });
});

function disparar_noti()
{
	// setInterval(notificaciones,10000);
	// notificaciones()
}

function empresa()
{	
    $.ajax({
        // data:  {parametros:parametros},
        url:   '../controlador/empresaC.php?empresa_dato=true',
        type:  'post',
        dataType: 'json',
        success:  function (response) { 
            console.log(response); 
                if(response[0].Ambiente==1)
                {
                    $('#rbl_ambiente_1').prop('checked',true);
                }else
                {                    
                    $('#rbl_ambiente_2').prop('checked',true);
                }
                 if(response[0].obligadoContabilidad=='0')
                {
                    $('#rbl_conta_no').prop('checked',true);
                }else
                {                    
                    $('#rbl_conta_si').prop('checked',true);
                }

                if(response[0].facturacion_electronica==0)
                {
                    $('#rbl_fac_no').prop('checked',true);
                }else
                {                    
                    $('#rbl_fac_si').prop('checked',true);
                }
                if(response[0].procesar_automatico==0)
                {
                    $('#rbl_proce_no').prop('checked',true);
                }else
                {                    
                    $('#rbl_proce_si').prop('checked',true);
                }

                $("#txt_nom_comercial").val(response[0].Nombre_Comercial)
                $("#txt_razon").val(response[0].Razon_Social)
                $("#txt_ci_ruc").val(response[0].RUC)
                $("#txt_direccion").val(response[0].Direccion)
                $("#txt_telefono").val(response[0].telefono)
                $("#txt_Email").val(response[0].email)
                $("#txt_host").val(response[0].smt_host)
                $("#txt_usuario").val(response[0].smtp_usuario)
                $("#txt_pass").val(response[0].smtp_pass)
                $("#txt_puerto").val(response[0].smtp_puerto)
                $("#txt_secure").val(response[0].smtp_secure)

                $("#txt_db_host").val(response[0].IP_VPN)
                $("#txt_db_usuario").val(response[0].USUARIO)
                $("#txt_db_pass").val(response[0].PASSWORD)
                $("#txt_db_puerto").val(response[0].PUERTO)
                $("#txt_db").val(response[0].BASE)
                $("#txt_iva").val(response[0].valor_iva)
                $("#txt_mesas").val(response[0].N_MESAS)
                $("#ddl_tipo_usuario").val(response[0].encargado_envios)
                if(response[0].logo !=null)
                {
                    console.log(response[0].logo);
                    $("#img_foto").attr('src',response[0].logo+'?'+Math.random())
                }
                var t = '<tr><td colspan="4">Sin certificados </td></tr>';

                if(response[0]['Ruta_Certificado']!='')
                {
                    var t = '<tr><td>'+response[0]['Ruta_Certificado']+'</td><td>'+response[0]['Clave_Certificado']+'</td><td><button class="btn btn-sm btn-danger" onclick="eliminar_cert()"><i class="fa fa-trash"></i></button></td></tr>';  
                }
                $('#tbl_certificados').html(t)
                
        }
      });

}

function eliminar_cert()
{
    Swal.fire({
          title: 'Esta seguro',
          text: "Esta apunto de eliminar sus certificados electronicos",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Continuar'
        }).then((result) => {
          if (result.value) {
            elim_certi()
          }
        })
}
function elim_certi()
{
    $.ajax({
      // data:  {parametros:parametros},
      url:   '../controlador/empresaC.php?eli_certi=true',
      type:  'post',
      dataType: 'json',      
      success:  function (response) { 
        if(response==1)
        {
            Swal.fire('Certificados eliminados','','success').then(function(){
                empresa()
            })
        }

        }
    })
}

function guardar_datos()
{

Swal.fire({
  title: 'Esta segur de guardar los datos de empresa',
  text: "Al guardar debera iniciar session de nuevo",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Continuar'
}).then((result) => {
  if (result.value) {
     insertar();
  }
})

  }

 
  
  function insertar()
  {
    var parametros = 
    {                     
        'Ambi':$('input[name=rbl_ambi]:checked').val(),
        'conta':$('input[name=rbl_conta]:checked').val(),
        'fact':$('input[name=rbl_fac]:checked').val(),
        'proce':$('input[name=rbl_proce]:checked').val(),
    
        'nom':$("#txt_nom_comercial").val(),
        'raz':$("#txt_razon").val(),
        'ci':$("#txt_ci_ruc").val(),
        'dir':$("#txt_direccion").val(),
        'tel':$("#txt_telefono").val(),
        'ema':$("#txt_Email").val(),
        'host':$("#txt_host").val(),
        'usu':$("#txt_usuario").val(),
        'pass':$("#txt_pass").val(),
        'puesto':$("#txt_puerto").val(),
        'secure':$("#txt_secure").val(),

        'dbhost':$("#txt_db_host").val(),
        'dbusuario':$("#txt_db_usuario").val(),
        'dbpass':$("#txt_db_pass").val(),
        'dbpuerto':$("#txt_db_puerto").val(),
        'db':$("#txt_db").val(),
        'iva':$("#txt_iva").val(),
        'mesa':$("#txt_mesas").val(),
        'responsable_envios':$("#ddl_tipo_usuario").val(),
    }
     $.ajax({
      data:  {parametros:parametros},
      url:   '../controlador/empresaC.php?insertar=true',
      type:  'post',
      dataType: 'json',
      /*beforeSend: function () {   
           var spiner = '<div class="text-center"><img src="../../img/gif/proce.gif" width="100" height="100"></div>'     
         $('#tabla_').html(spiner);
      },*/
        success:  function (response) {  
        if(response == 1)
        {
          // $('#myModal').modal('hide');
          Swal.fire(
            '',
            'Operacion realizada con exito.',
            'success'
          ).then(function(){eliminar_session()})

        }
        else if(response==-2)
        {
            Swal.fire('','CI repetido.','warning');
        }
        else
        {
            Swal.fire('','Usuario agregado.','success').then(function(){ location.href = 'detalle_usuario.php?id='+response});           
        }  
               
      }
    });

  }

  function tipo_usuario()
  {
      $.ajax({
        // data:  {parametros:parametros},
        url:   '../controlador/empresaC.php?tipo_usuario=true',
        type:  'post',
        dataType: 'json',
        success:  function (response) { 
            $('#ddl_tipo_usuario').html(response);  
        }
      });


  }