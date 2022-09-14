<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/stadion.php";
class StadionDAO extends Stadion
{

     private $table_name="stadion";
     private $database = null;

     /**
      * @param mixed $objDB
      */
     public function __construct( $objDB)
     {
         $this->database= $objDB;
     }
   

    /**
     * @return [type]
     */
    public function insertStadion()
    {
        $ime=parent::getIme();
        $adresa=parent::getAdresa();
        $kapacitet=parent::getKapacitet();

        $columns_name="ime,adresa,kapacitet";
        $columns_value="'$ime','$adresa',$kapacitet";

        $this->database ->insertRow($this->table_name,$columns_name,$columns_value);

        
    }

    /**
     * @return [type]
     */
    public function deleteStadion()
    {
        $stadion_id=parent::getStadionId();

        $pk_name="stadion_id";
        $pk_value=$stadion_id;

        $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);

      
    }

    /**
     * @return [type]
     */
    public function updateStadion()
    {
        $stadion_id=parent::getStadionId();
        $ime=parent::getIme();
        $adresa=parent::getAdresa();
        $kapacitet=parent::getKapacitet();

        $columns="ime='$ime',adresa='$adresa',kapacitet=$kapacitet";

        $condition="stadion_id=$stadion_id";

        $this->database->updateRow($this->table_name,$columns,$condition);
    }

    /**
     * @return [type]
     */
    public function selectStadion()
    {
        return $this->database ->selectRow($this->table_name);
    }
}
?>