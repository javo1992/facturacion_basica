<?php 
include('../modelo/homeM.php');
/**
 * 
 */
$controlador = new kardexC();
if(isset($_GET['lista']))
{
	$parametros = $_POST['parametros'];
	echo json_encode($controlador->lista($parametros));
}


class homeC
{
	private $modelo;
	function __construct()
	{
		$this->modelo = new kardexM();
		
	}


	
	
}
?>