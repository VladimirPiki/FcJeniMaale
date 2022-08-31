<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/outcome.php";
class OutcomeDAO extends Outcome
{
     //attributes class
     private $table_name="outcome";
     private $database = null;
     //constructor
     public function __construct( $objDB)
     {
         $this->database= $objDB;
     }
     //methods

    public function insertOutcome()
    {
        //$outcome_id=parent::getOutcomeId();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();
        $dres_id=parent::getDresId();

        $columns_name="klub,iznos_denari,dres_id";
        $columns_value="'$klub',$iznos_denari,$dres_id";

        $this->database ->insertRow($this->table_name,$columns_name,$columns_value);

      
    }

    public function deleteOutcome ()
    {
        $outcome_id=parent::getOutcomeId();
        
        $pk_name="outcome_id";
        $pk_value=$outcome_id;

        $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);
       
      
    }

    public function updateOutcome ()
    {   
        $outcome_id=parent::getOutcomeId();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();
        $dres_id=parent::getDresId();

        $columns="outcome_id=$outcome_id,klub='$klub',iznos_denari=$iznos_denari,dres_id=$dres_id";

        $condition="outcome_id=$outcome_id";
       
        $this->database->updateRow($this->table_name,$columns,$condition);//class database
    }

    public function selectOutcome ()
    {
        return $this->database ->selectRow($this->table_name." 
        INNER JOIN igrachi 
        ON igrachi.dres_id=outcome.dres_id");
    }
/*
public function selectOutcome ()
{
    return $this->database ->selectRowFilds("igrachi.ime as ime_igrachi,igrachi.prezime as prezime_igrachi,igrachi.pozicija as pozicija_igrachi,
    igrachi.godini as godini_igrachi",$this->table_name." 
    INNER JOIN igrachi 
    ON igrachi.dres_id=outcome.dres_id");
}
*/

}
?>