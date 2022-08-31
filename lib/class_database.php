<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class DB
{
	//class attributes
	private $servername = "localhost";
	private $username 	= "root";
	private $password 	= "";
	private $dbname		= "klub_fudbalski";
	private $conn		= null;

	//construct
	public function __construct(){
		try {
		  $this->conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password);
		  // set the PDO error mode to exception
		  $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		  //echo "Connected successfully";
		  $statement  = $this->conn->prepare("SET NAMES 'utf8'");
		  $statement->execute();
		  ini_set('default_charset', 'utf-8');
		} catch(PDOException $e) {
		  echo "Connection failed: " . $e->getMessage();
		}
	}
	
    //Ovie nadolu se methods
	public function insertRow($table_name,$columns_name,$columns_value){
		$sql="INSERT INTO $table_name($columns_name)
			VALUES($columns_value)";
		$this->conn->exec($sql);
	}

	public function deleteRow($table_name,$pk_name,$pk_value) {
		$sql="DELETE FROM $table_name 
			WHERE $pk_name=$pk_value";
		$this->conn->exec($sql);
	}

	public function selectRow($table_name){
		//$sql="SELECT * FROM $table_name";
		//$this->conn->execute($sql); //execute vrakja vrednost a exec ne vrakja vrednost
		
		$stmt=$this->conn->prepare("SELECT * from ".$table_name);
		$stmt->execute();
		return $stmt->fetchAll();
	
	}

	public function selectRowFilds($filds,$table_name){
		//$sql="SELECT * FROM $table_name";
		//$this->conn->execute($sql); //execute vrakja vrednost a exec ne vrakja vrednost
		
		$stmt=$this->conn->prepare("SELECT $filds from ".$table_name);
		$stmt->execute();
		return $stmt->fetchAll();
	
	}


	public function updateRow($table_name,$columns,$condition){
		$sql="	UPDATE $table_name
				SET $columns
				WHERE $condition";
		$this->conn->exec($sql);
	}

}
?>