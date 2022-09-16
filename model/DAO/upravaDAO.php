<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/uprava.php";
class UpravaDAO extends Uprava
{

     private $table_name="uprava";
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
    public function insertUprava()
    {
        $dres_id=parent::getDresId();
        $zalaganje=parent::getZalaganje();
        $rabotna_ocenka=parent::getRabotnaOcenka();

        $columns_value="$dres_id,'$zalaganje',$rabotna_ocenka";
        $this->database ->callStoredProcedure("_insert_uprava",$columns_value);   
    }

    /**
     * @return [type]
     */
    public function deleteUprava()
    {
        $dres_id=parent::getDresId();
        $pk_value=$dres_id;
        $this->database ->callStoredProcedure("_delete_uprava",$pk_value);    
    }

    /**
     * @return [type]
     */
    public function updateUprava()
    {   
        $dres_id=parent::getDresId();
        $zalaganje=parent::getZalaganje();
        $rabotna_ocenka=parent::getRabotnaOcenka();

        $columns="zalaganje='$zalaganje',rabotna_ocenka=$rabotna_ocenka";

        $condition="dres_id=$dres_id";
        $this->database ->updateRow($this->table_name,$columns,$condition);  
    }

    /**
     * @return [type]
     */
    public function selectUprava()
    {
        return $this->database ->selectRowStoredProcedure("_select_uprava");
    }
}
?>