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

        $columns_value="'$ime','$adresa',$kapacitet";
        $this->database ->callStoredProcedure("_insert_stadion",$columns_value);   
    }

    /**
     * @return [type]
     */
    public function deleteStadion()
    {
        $stadion_id=parent::getStadionId();
        $pk_value=$stadion_id;
        $this->database ->callStoredProcedure("_delete_stadion",$pk_value);      
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
        return $this->database ->selectRowStoredProcedure("_select_stadion");
    }
}
?>