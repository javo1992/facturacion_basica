<?php
if(!class_exists('db'))
{
	include('../db/db.php');
}
/**
 * 
 */
class homeM
{
	private $db;
	
	function __construct()
	{
		$this->db = new db();

	}

	function numero_factura($estado)
	{
		


	}

}

?>