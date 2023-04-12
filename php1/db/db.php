<?php 
@session_start();
/**
 * 
 */
//phpinfo();
$d = new db();
// $d->conexion_server();
class db
{
	private $usuario;
	private $password;  // en mi caso tengo contraseña pero en casa caso introducidla aquí.
	private $servidor;
	private $database;
	private $puerto;
	PRIVATE $tipobase;


	private $ssh_host;
	private $ssh_user;
	private $ssh_pass;
	private $ssh_port;
	function __construct()
	{
		$this->default_conexion();
	   
	}

	function default_conexion()
	{
	    // base de datos al la que revisa las credenciales por default
	 	$this->usuario = "root";
	    $this->password = ""; 
	    $this->servidor = "localhost";
	    $this->database ="cafeteria1";
	    $this->puerto = '3306';
	    $this->tipobase = 'MYSQL';	

	}

	function base_principal_datos()
	{
		return array(
			'usuario'=>$this->usuario,
		    'password'=>$this->password, 
		    'server'=>$this->servidor,
		    'database'=>$this->database,
		    'puerto'=>$this->puerto,
		    'tipobase'=>$this->tipobase,
		    'id_principal'=>6,
		);

	}

	function conexion_server()
	{
		try{
		     $conn = new PDO("mysql:host=".$this->servidor.";dbname=".$this->database.';charset=utf8', $this->usuario, $this->password);      
		     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		      return $conn;
		    }	 
		  catch(PDOException $e)
		      {
		      echo "La conexión ha fallado: " . $e->getMessage();
		      }
		 
		  $conn = null;
	}

 //    function conexion_server3()
	// {
	// 	if($this->tipobase=='MYSQL')
	// 	{
	// 	   $conn = new mysqli($this->servidor, $this->usuario, $this->password,$this->database,$this->puerto);
	// 	   $conn->set_charset("utf8");
	// 	   if (!$conn) 
	// 	   {
	// 		   return false;
	// 	   }
	// 	   return $conn;
	// 	}else
	// 	{			 
	// 	    $connectionInfo = array("Database"=>$this->database, "UID"=>$this->usuario,"PWD"=>$this->password,"CharacterSet"=>"UTF-8");
	// 		$cid = sqlsrv_connect($this->servidor.', '.$this->puerto, $connectionInfo); //returns false
	// 		if( $cid === false )
	// 		   {
	// 				echo 'no se pudo conectar a la base de datos';
	// 				die( print_r( sqlsrv_errors(), true));
	// 		   }else
	// 		   {
	// 		   	// echo 'sql con';
	// 		   }
	// 		return $cid;
	// 	}
	  
	// }

	function conexion($id_empresa)
	{
		// print_r($id_empresa);print_r('-');die();
		$this->datos_de_comexion_empresa($id_empresa);
		if($this->tipobase=='MYSQL')
		{
			   try{
			     $conn = new PDO("mysql:host=".$this->servidor.";dbname=".$this->database.';charset=utf8', $this->usuario, $this->password);      
			     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			      return $conn;
			    }	 
			  catch(PDOException $e)
			      {
			      echo "La conexión ha fallado: " . $e->getMessage();
			      }
			 
			  $conexion = null;
		}else
		{
			 $connectionInfo = array("Database"=>$this->database, "UID"=>$this->usuario,"PWD"=>$this->password,"CharacterSet"=>"UTF-8");
			$cid = sqlsrv_connect($this->servidor.', '.$this->puerto, $connectionInfo); //returns false
			if( $cid === false )
			   {
					echo 'no se pudo conectar a la base de datos';
					die( print_r( sqlsrv_errors(), true));
			   }else
			   {
			   	// echo 'sql con';
			   }
			return $cid;
		}
	  
	}


	function existente($sql,$id_empresa)
	{
		$conn = $this->conexion($id_empresa);
		if($this->tipobase=='MYSQL')
		{
			$resultado = $conn->query($sql,PDO::FETCH_ASSOC);
	    	$datos = array();
	    	while ($row = $resultado->fetch()) {
			    $datos[] =  $row;
			}
			$conn = null;		
			if(count($datos)>0)
			{
				return true;
			}else
			{
				return false;
			}
	   }else
	   {
		   	 $stmt =sqlsrv_query($conn,$sql);
			 $result = array();	
				if( $stmt === false) {
					die( print_r( sqlsrv_errors(), true) );
				}
				while( $row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC) ) 
		     	{
		     		$result[] = $row;
		     	}
		     	sqlsrv_close($conn);
		     	if(count($result)>0)
		     	{
		     		return true;
		     	}else
		     	{
		     		return false;
		     	}
	   }

	}
	function datos($sql,$id_empresa)
	{
		$conn = $this->conexion($id_empresa); 
		if($this->tipobase=='MYSQL')
		{			
			$sql = $this->sintaxis_MYSQL($sql);
			$resultado = $conn->query($sql,PDO::FETCH_ASSOC);
	    	$datos = array();
	    	while ($row = $resultado->fetch()) {
			    $datos[] =  $row;
			}
			$conn = null;		
			return $datos;
		}else
		{
			$sql = $this->sintaxis_SQL_SERVER($sql);
			$stmt = sqlsrv_query($conn,$sql);
				// print_r($sql);die();
				$result = array();	
				if( $stmt === false) {
					die( print_r( sqlsrv_errors(), true) );
				}
				while( $row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC) ) 
		     	{
		     		$result[] = $row;
		     	}
		     	sqlsrv_close($conn);
		     	return $result;

		}


	}
	function inserts($tabla,$datos,$id_empresa)
	{
		$conn = $this->conexion($id_empresa);
		if($this->tipobase=='MYSQL')
		{
			$valores = array();
			$incognitas = '';
	 		$campos = '';
	 		$sql = 'INSERT INTO '.$tabla;

	 		foreach ($datos as $key => $value) {
	 			$campos.=$value['campo'].',';
	 			$incognitas.='?,';
	 			array_push($valores, $value['dato']);
	 		}
	 		$campos = substr($campos, 0, -1);
	 		$incognitas = substr($incognitas, 0, -1);
	 		$sql.='('.$campos.')values('.$incognitas.');'; 

	 		// print_r($sql);
	 		// print_r($valores);die();
	 		try{
				$stmt = $conn->prepare($sql);
				$stmt->execute($valores);
				$conn=null;
				return 1;
			}catch(PDOException $e)
			{
				print_r($e);die();
				$conn=null;
				return -1;
			}
	   }else
	   {
	   	 	$valores = '';
	 		$campos = '';
	 		$sql = 'INSERT INTO '.$tabla;

	 		foreach ($datos as $key => $value) {
	 			$campos.=$value['campo'].',';
	 			if(is_numeric($value['dato']))
	 			{
	 			  $valores.=$value['dato'].',';
	 			}else
	 			{
	 				$valores.="'".$value['dato']."',";
	 			}
	 			 			
	 		}
	 		$campos = substr($campos, 0, -1);
	 		$valores = substr($valores, 0, -1);
	 		$sql.='('.$campos.')values('.$valores.');'; 	

	 		// print_r($sql);die();	
			 $stmt = sqlsrv_query($conn, $sql);
			   if(!$stmt)
			   {
				   die( print_r( sqlsrv_errors(), true));
				   sqlsrv_close($conn);
				return -1;
			   }

			   sqlsrv_close($conn);
			   return 1;
	   }

	}

	function update($tabla,$datos,$where,$id_empresa)
	{
		$conn = $this->conexion($id_empresa);

		if($this->tipobase=='MYSQL')
		{
			$valores = array();
	 		$campos = '';
	 		$sql = 'UPDATE '.$tabla.' SET ';
	 		foreach ($datos as $key => $value) {	 			
				$sql.=$value['campo'].'=?,';
				array_push($valores, $value['dato']);	 			
	 		}
	 		$sql = substr($sql, 0, -1);


	 		$sql.=" WHERE ";


	 		foreach ($where as $key => $value) {	 			
	 			  $sql.=$value['campo'].'=? AND ';
	 			  array_push($valores, $value['dato']);	
	 		} 		
	 		$sql = substr($sql, 0, -4);	

	 		// print_r($sql);
	 		// print_r($valores);die();
	 		try{
				$stmt = $conn->prepare($sql);
				$stmt->execute($valores);
				$conn=null;
				return 1;
			}catch(PDOException $e)
			{
				// print_r($e);die();
				$conn=null;
				return -1;
			}
		}else
		{
			$valores = '';
	 		$campos = '';
	 		$sql = 'UPDATE '.$tabla.' SET ';

	 		foreach ($datos as $key => $value) {
	 			if(is_numeric($value['dato']))
	 			{
	 			   $sql.=$value['campo'].'='.$value['dato'];
	 			}else
	 			{
	 				$sql.=$value['campo']."='".$value['dato']."'";
	 			}
	 			$sql.=',';
	 			 			
	 		}

	 		$sql = substr($sql, 0, -1);

	 		$sql.=" WHERE ";


	 		foreach ($where as $key => $value) {
	 			if(is_numeric($value['dato']))
	 			{
	 			  $sql.=$value['campo'].'='.$value['dato'];
	 			}else
	 			{
	 			    $sql.=$value['campo']."='".$value['dato']."'";
	 			//	$valores.='"'.$value['dato'].'",';
	 			}
	 			$sql.= " AND ";
	 			 			
	 		} 		
	 		$sql = substr($sql, 0, -5);	
	 	// 	if($tabla!='cliente')
	 	// 	{
	 		// print_r($sql);die();
	 	// }
			 $stmt = sqlsrv_query($conn, $sql);
			   if(!$stmt)
			   {
				   die( print_r( sqlsrv_errors(), true));
				   sqlsrv_close($conn);
				return -1;
			   }

			   sqlsrv_close($conn);
			   return 1;
		}

	}


	function delete($tabla,$datos,$id_empresa)
	{
		$conn = $this->conexion($id_empresa);
		if($this->tipobase=='MYSQL')
		{
			$valores = array();
	 		$campos = '';
	 		$sql = 'DELETE FROM '.$tabla.'';
	 		if($datos!='' || $datos!=false)
	 		{
	 			$sql.=' WHERE ';
	 			foreach ($datos as $key => $value) {	 			
		 			$sql.=$value['campo'].'=? AND ';
		 			array_push($valores,$value['dato']);	 			 			
		 		}
		 		$sql = substr($sql, 0, -4);	
	 		}	 		
	 		// print_r($sql);
	 		// print_r($valores);die();
	 		try{
				$stmt = $conn->prepare($sql);
				$stmt->execute($valores);
				$conn=null;
				return 1;
			}catch(PDOException $e)
			{
				// print_r($e);die();
				$conn=null;
				return -1;
			}
	   }else
	   {

		   	$valores = '';
	 		$campos = '';
	 		$sql = 'DELETE FROM '.$tabla.' WHERE ';

	 		foreach ($datos as $key => $value) {
	 			$campos.=$value['campo'].',';
	 			if(is_numeric($value['dato']))
	 			{
	 			  $sql.=$value['campo'].'='.$value['dato'];
	 			}else
	 			{
	 			    $sql.=$value['campo'].'="'.$value['dato'].'"';
	 			//	$valores.='"'.$value['dato'].'",';
	 			}
	 			$sql.= " AND ";
	 			 			
	 		}
	 		$sql = substr($sql, 0, -5);
	 		//print_r($sql);	die();	
			 $stmt = sqlsrv_query($conn, $sql);
			   if(!$stmt)
			   {
				   die( print_r( sqlsrv_errors(), true));
				   sqlsrv_close($conn);
				return -1;
			   }

			   sqlsrv_close($conn);
			   return 1;

	   }

	}

	function sql_string($sql,$id_empresa)
	{
	   $conn = $this->conexion($id_empresa);
	   if($this->tipobase=='MYSQL')
	   {
	       try{
				$smts = $conn->query($sql);
				$conn=null;
				return 1;
			}catch(PDOException $e)
			{
				// print_r($e);die();
				return -1;
			}

	   }else
	   {
	   	   $stmt = sqlsrv_query($conn, $sql);
		   if(!$stmt)
		   {
			   die( print_r( sqlsrv_errors(), true));
			   sqlsrv_close($conn);
			return -1;
		   }

		   sqlsrv_close($conn);
		   return 1;		
	   }
		
	}

	function sql_string_cod_error($tabla,$datos,$id_empresa)
	{
		// print_r($sql);
	   $conn = $this->conexion($id_empresa);
	   if($this->tipobase=='MYSQL')
	   {
	   	   $valores = array();
	 		$campos = '';
	 		$sql = 'DELETE FROM '.$tabla.'';
	 		if($datos!='' || $datos!=false)
	 		{
	 			$sql.=' WHERE ';
	 			foreach ($datos as $key => $value) {	 			
		 			$sql.=$value['campo'].'=? AND ';
		 			array_push($valores,$value['dato']);	 			 			
		 		}
		 		$sql = substr($sql, 0, -4);	
	 		}	 		
	 		// print_r($sql);
	 		// print_r($valores);die();
	 		try{
				$stmt = $conn->prepare($sql);
				$stmt->execute($valores);
				$conn=null;
				return 1;
			}catch(PDOException $e)
			{
				return $e->getCode();
				// print_r($e->getCode( ));die();
				$conn=null;
				// return -1;
			}

	   }else
	   {
	        $stmt = sqlsrv_query($conn, $sql);
			if(!$stmt)
			{
				$error = sqlsrv_errors();
				return $error[0]['code'];
			}

			sqlsrv_close($conn);
			return 1;
	   }

	}


	function crear_db($sql,$conn)
	{
       $resultado = mysqli_query($conn, $sql);
		if(!$resultado)
		{
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			return -1;
		}
		return 1;
		mysqli_close($conn);
		
	}
	function existente_db($sql,$conn)
	{
		$resultado = mysqli_query($conn, $sql);
		if(!$resultado)
		{

			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			return false;
		}else
		{
			return $resultado->num_rows;
			
		}

		mysqli_close($conn);

	}

	function sintaxis_MYSQL($sql)
	{
		$sql = str_replace('OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY',' LIMIT 10', $sql);
		return $sql;

	}

	function sintaxis_SQL_SERVER($sql)
	{

		$sql = str_replace('LIMIT 10',' OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY', $sql);
		return $sql;

	}

	function datos_de_comexion_empresa($empresa=false)
	{
		
		if($empresa)
		{
			// if(!file('../db/credenciales'))
			// {
			// 	mkdir('../db/credenciales/',7777);
			// }
			 if(!file_exists('../db/credenciales/session_empresa_'.$empresa.'.txt'))
			    {
			    	if(!file_exists('../db/credenciales/')){
			    		mkdir('../db/credenciales/',7777);			    	
			    	}

					$this->default_conexion();
				      $conn = new mysqli($this->servidor, $this->usuario, $this->password, $this->database,$this->puerto);
				      $conn->set_charset("utf8");
					   if (!$conn) 
					   {
						   return false;
					   }
					 $sql = "SELECT * FROM empresa WHERE id_empresa = '".$empresa."'";

					 $resultado = mysqli_query($conn,$sql);
					if(!$resultado)
					{

						echo "Error: " . $sql . "<br>" . mysqli_error($conn);
						mysqli_close($conn);
						return false;
					}
					$datos = array();
					while ($row = mysqli_fetch_assoc($resultado)) {
						$datos[] = $row;
					}
					 $this->usuario = $datos[0]['USUARIO']; 
					 $this->password =$datos[0]['PASSWORD'];  // en mi caso tengo contraseña pero en casa caso introducidla aquí.
					 $this->servidor =$datos[0]['IP_VPN'];  
					 $this->database =$datos[0]['BASE'];  
					 $this->puerto = $datos[0]['PUERTO']; 
					 $this->tipobase = $datos[0]['TIPO_BASE'];

			 
		    		$file = fopen('../db/credenciales/session_empresa_'.$empresa.'.txt', "w");
                     fwrite($file,$this->usuario.PHP_EOL);
		    		 fwrite($file,$this->password.PHP_EOL);
                     fwrite($file,$this->servidor.PHP_EOL);
                     fwrite($file,$this->database.PHP_EOL);
                     fwrite($file,$this->puerto.PHP_EOL);
                     fwrite($file,$this->tipobase);
		    		fclose($file);
			    }else
			    {
			    	$file = fopen('../db/credenciales/session_empresa_'.$empresa.'.txt', "r");
				     $conn = array();
				     while(!feof($file)) {
				      $conn[] = fgets($file);
				    }
				    fclose($file);				    
				    $this->usuario = trim($conn[0]);  
				    $this->password =trim($conn[1]);  
				    $this->servidor=trim($conn[2]);  
				    $this->database=trim($conn[3]);  
				    $this->puerto =trim($conn[4]);  
				    $this->tipobase=trim($conn[5]);  
			    }
		}
		
	}

}
?>