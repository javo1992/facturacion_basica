<?php 
include('../modelo/empresaM.php');
/**
 * 
 */
$controlador = new empresaC();
if(isset($_GET['empresa_dato']))
{
	echo json_encode($controlador->empresa_dato());
}
if(isset($_GET['cargar_imagen']))
{
   echo json_encode($controlador->guardar_foto($_FILES,$_POST));
}
if(isset($_GET['cargar_certi']))
{
   echo json_encode($controlador->guardar_certi($_FILES,$_POST));
}
// if(isset($_GET['buscar']))
// {
// 	echo json_encode($controlador->buscar_colores($_POST['buscar']));
// }
if(isset($_GET['insertar']))
{
	echo json_encode($controlador->insertar_editar($_POST['parametros']));
}
if(isset($_GET['tipo_usuario']))
{
	echo json_encode($controlador->tipo_usuario());
}
if(isset($_GET['eli_certi']))
{
	echo json_encode($controlador->eliminar_certificados());
}
// if(isset($_GET['colores']))
// {
// 	$query='';
// 	if(isset($_GET['q']))
// 	{
// 		$query= $_GET['q'];
// 	}
// 	echo json_encode($controlador->buscar_colores_auto($query));

// }


class empresaC
{
	private $modelo;
	
	function __construct()
	{
		$this->modelo = new empresaM();
		
	}

	function empresa_dato()
	{
		$id_empresa = $_SESSION['INICIO']['ID_EMPRESA'];
		$datos = $this->modelo->datos_empresa($id_empresa);
		return $datos;
	}
	function guardar_foto($file,$post)
	 {
	    $ruta='../img/empresa/';//ruta carpeta donde queremos copiar las imágenes
	    if (!file_exists($ruta)) {
	       mkdir($ruta, 0777, true);
	    }
	    if($this->validar_formato_img($file)==1)
	    {
	         $uploadfile_temporal=$file['file_img']['tmp_name'];
	         $tipo = explode('/', $file['file_img']['type']);
	         $nombre = 'logo.'.$tipo[1];	        
	         $nuevo_nom=$ruta.$nombre;
	         if (is_uploaded_file($uploadfile_temporal))
	         {
	           move_uploaded_file($uploadfile_temporal,$nuevo_nom);
	          
	              $datosI[0]['campo']='logo';
	              $datosI[0]['dato'] = $nuevo_nom;
	              $where[0]['campo'] = 'id_empresa';
	              $where[0]['dato'] = $_SESSION['INICIO']['ID_EMPRESA'];
	              $base = $this->modelo->editar('empresa',$datosI,$where);
	           if($base==1)
	           {
	            return 1;
	           }else
	           {
	            return -1;
	           }

	         }
	         else
	         {
	           return -1;
	         } 
	     }else
	     {
	      return -2;
	     }

	  }
  function guardar_certi($file,$post)
	 {
	    $ruta='../comprobantes/certificados/';//ruta carpeta donde queremos copiar las imágenes
	    if (!file_exists($ruta)) {
	       mkdir($ruta, 0777, true);
	    }

	    // print_r($file);print_r($post);die();

	    if($this->validar_formato_certi($file)==1)
	    {
	         $uploadfile_temporal=$file['file_certificado']['tmp_name'];
	         $tipo = explode('/', $file['file_certificado']['type']);
	         $nombre = $file['file_certificado']['name'];      
	         $nuevo_nom=$ruta.$nombre;
	         if (is_uploaded_file($uploadfile_temporal))
	         {
	           move_uploaded_file($uploadfile_temporal,$nuevo_nom);
	          
	              $datosI[0]['campo']='Ruta_Certificado';
	              $datosI[0]['dato'] = $nombre;
	              $datosI[1]['campo']='Clave_Certificado';
	              $datosI[1]['dato'] = $post['txt_clave_cer'];
	              $where[0]['campo'] = 'id_empresa';
	              $where[0]['dato'] = $_SESSION['INICIO']['ID_EMPRESA'];
	              $base = $this->modelo->editar('empresa',$datosI,$where);
	           if($base==1)
	           {
	            return 1;
	           }else
	           {
	            return -1;
	           }

	         }
	         else
	         {
	           return -1;
	         } 
	     }else
	     {
	      return -2;
	     }

	  }
 function validar_formato_img($file)
  {
    switch ($file['file_img']['type']) {
      case 'image/jpeg':
      case 'image/pjpeg':
      case 'image/gif':
      case 'image/png':
         return 1;
        break;      
      default:
        return -1;
        break;
    }

  }

  function validar_formato_certi($file)
  {
    switch ($file['file_certificado']['type']) {
      case 'application/x-pkcs12':
         return 1;
        break;      
      default:
        return -1;
        break;
    }

  }

  function insertar_editar($parametros)
  {
  	// print_r($parametros);die();
  	$conta=0;
  	$datos[0]['campo'] ='Razon_Social';
	$datos[0]['dato']= $parametros['raz'];
	$datos[1]['campo'] = 'Nombre_Comercial';
	$datos[1]['dato']= $parametros['nom'];
	$datos[2]['campo'] = 'RUC';
	$datos[2]['dato']= $parametros['ci'];
	$datos[3]['campo'] = 'Direccion';
	$datos[3]['dato']= $parametros['dir'];
	$datos[4]['campo'] = 'telefono';
	$datos[4]['dato']= $parametros['tel'];
	$datos[5]['campo'] = 'email';
	$datos[5]['dato']= $parametros['ema'];
	$datos[6]['campo'] = 'IP_VPN';
	$datos[6]['dato']= $parametros['dbhost'];
	$datos[7]['campo'] = 'BASE';
	$datos[7]['dato']= $parametros['db'];		
	$datos[8]['campo'] = 'TIPO_BASE';
	$datos[8]['dato']= 'MYSQL';		
	$datos[9]['campo'] = 'USUARIO';
	$datos[9]['dato']= $parametros['dbusuario'];		
	$datos[10]['campo'] = 'PASSWORD';
	$datos[10]['dato']= $parametros['dbpass'];		
	$datos[11]['campo'] = 'PUERTO';
	$datos[11]['dato']= $parametros['dbpuerto'];		
	$datos[12]['campo'] = 'Ambiente';
	$datos[12]['dato']= $parametros['Ambi'];		
	$datos[13]['campo'] = 'Periodo';
	$datos[13]['dato']= '.';
	if($parametros['conta']==1){$conta = 1;}
	$datos[14]['campo'] = 'obligadoContabilidad';
	$datos[14]['dato']= $conta;
	$datos[15]['campo'] = 'valor_iva';
	$datos[15]['dato']= $parametros['iva'];
	$datos[16]['campo'] = 'smtp_host';
	$datos[16]['dato']= $parametros['host'];		
	$datos[17]['campo'] = 'smtp_usuario';
	$datos[17]['dato']= $parametros['usu'];
	$datos[18]['campo'] = 'smtp_pass';
	$datos[18]['dato']= $parametros['pass'];
	$datos[19]['campo'] = 'smtp_secure';
	$datos[19]['dato']= $parametros['secure'];
	$datos[20]['campo'] = 'N_MESAS';
	$datos[20]['dato']= $parametros['mesa'];

	$datos[21]['campo'] = 'facturacion_electronica';
	$datos[21]['dato']= $parametros['fact'];
	$datos[22]['campo'] = 'procesar_automatico';
	$datos[22]['dato']= $parametros['proce'];
	$datos[23]['campo'] = 'encargado_envios';
	$datos[23]['dato']= $parametros['responsable_envios'];
	


	$where[0]['campo'] = 'id_empresa';
	$where[0]['dato']= $_SESSION['INICIO']['ID_EMPRESA'];
	 return  $this->modelo->editar('empresa',$datos,$where);
  }

  function tipo_usuario()
  {
  	$datos = $this->modelo->tipo_usuario();
  	$op='<optio value="">Seleccione</option>';
  	foreach ($datos as $key => $value) {
  		$op.='<option value="'.$value['id'].'">'.$value['detalle'].'</option>';
  	}
  	return $op;
  }

  function eliminar_certificados()
  {
  	$datos[0]['campo'] = 'Clave_Certificado';
	  $datos[0]['dato']= '';
	  $datos[1]['campo'] = 'Ruta_Certificado';
	  $datos[1]['dato']= '';
	
		$where[0]['campo'] = 'id_empresa';
		$where[0]['dato']= $_SESSION['INICIO']['ID_EMPRESA'];
  	return  $this->modelo->editar('empresa',$datos,$where);
  }

}
?>