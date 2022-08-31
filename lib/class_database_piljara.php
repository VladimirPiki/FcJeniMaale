<?php
    
/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

 class DB
 {
    /** 
    *   Class attributes
    */
    private $servername = "localhost";
	private $username 	= "root";
	private $password 	= "";
	private $dbname		= "piljara";
	private $conn		= null;

    /** 
    *   Construct
    */
	public function __construct(){
		try {
		  $this->conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password);
		  // set the PDO error mode to exception
		  $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		  echo "Connected successfully";
		} catch(PDOException $e) {
		  echo "Connection failed: " . $e->getMessage();
		}
	}
    
    /**
     * Methods
     */
	public function insertRow($table_name,$columns_name,$columns_value){
		$sql="INSERT INTO $table_name($columns_name)
			VALUES($columns_value)";
		$this->conn->exec($sql);
	}

    /**
     * Methods
     */
	public function deleteRow($table_name,$pk_name,$pk_value){
		$sql="DELETE FROM $table_name 
			WHERE $pk_name=$pk_value";
		$this->conn->exec($sql);
	}

    /**
     * Methods
     */
	public function selectRow($table_name){
		$sql="SELECT * FROM $table_name";
		$this->conn->execute($sql); //execute vrakja vrednost a exec ne vrakja vrednost
	}

    /**
     * Methods
     */ 
    public function updateRow($table_name,$columns_name,$columns_value,$pk_name,$pk_value){
        $sql="  UPDATE $table_name 
				SET $columns_name=$columns_value
				WHERE $pk_name=$pk_value";
       /* $this->conn->prepare($sql);
		$this->conn->execute($sql);*/

		// Prepare statement
		$this->stmt = $this->conn->prepare($sql);

		// execute the query
		$this->stmt->execute();
		
    }
 }
?>