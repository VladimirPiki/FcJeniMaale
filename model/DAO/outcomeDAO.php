<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/outcome.php";
class OutcomeDAO extends Outcome
{

     private $table_name="outcome";
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
    public function insertOutcome()
    {

        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();
        $dres_id=parent::getDresId();

        $columns_value="'$klub',$iznos_denari,$dres_id";
        $this->database ->callStoredProcedure("_insert_outcome",$columns_value);  
    }

    /**
     * @return [type]
     */
    public function deleteOutcome ()
    {
        $outcome_id=parent::getOutcomeId();
        $pk_value=$outcome_id;
        $this->database ->callStoredProcedure("_delete_outcome",$pk_value);
    }

    /**
     * @return [type]
     */
    public function updateOutcome ()
    {   
        $outcome_id=parent::getOutcomeId();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();
        $dres_id=parent::getDresId();

        $columns="outcome_id=$outcome_id,klub='$klub',iznos_denari=$iznos_denari,dres_id=$dres_id";

        $condition="outcome_id=$outcome_id";
       
        $this->database->updateRow($this->table_name,$columns,$condition);
    }

    /**
     * @return [type]
     */
    public function selectOutcome ()
    {
        return $this->database ->selectRow($this->table_name." 
        INNER JOIN igrachi 
        ON igrachi.dres_id=outcome.dres_id");
    }
}
?>