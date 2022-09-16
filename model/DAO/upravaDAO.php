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
        return $this->database ->selectRowFilds("igrachi.dres_id,igrachi.ime,igrachi.prezime,igrachi.pozicija,igrachi.godini,uprava.zalaganje,uprava.rabotna_ocenka,igrachi.ime as ime_igrachi,igrachi.prezime as prezime_igrachi,igrachi.pozicija as pozicija_igrachi,
        igrachi.godini as godini_igrachi".$this->table_name."
        inner JOIN igrachi
        ON igrachi.dres_id=uprava.dres_id");
    }
}
?>