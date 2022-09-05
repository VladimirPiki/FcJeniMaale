<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/uprava.php";
class UpravaDAO extends Uprava
{
     //attributes class
     private $table_name="uprava";
     private $database = null;
     //constructor
     public function __construct( $objDB)
     {
         $this->database= $objDB;
     }
     //methods

    public function insertUprava()
    {
        $dres_id=parent::getDresId();
        $zalaganje=parent::getZalaganje();
        $rabotna_ocenka=parent::getRabotnaOcenka();

        $columns_name="dres_id,zalaganje,rabotna_ocenka";
        $columns_value="$dres_id,'$zalaganje',$rabotna_ocenka";

        $this->database ->insertRow($this->table_name,$columns_name,$columns_value);

        
    }

    public function deleteUprava()
    {
        $dres_id=parent::getDresId();
        
        $pk_name="dres_id";
        $pk_value=$dres_id;

        $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);

        
    }

    public function updateUprava()
    {   
        $dres_id=parent::getDresId();
        $zalaganje=parent::getZalaganje();
        $rabotna_ocenka=parent::getRabotnaOcenka();

        $columns="zalaganje='$zalaganje',rabotna_ocenka=$rabotna_ocenka";

        $condition="dres_id=$dres_id";


        $this->database ->updateRow($this->table_name,$columns,$condition);
     
    }

    public function selectUprava()
    {
        return $this->database ->selectRowFilds("igrachi.dres_id,igrachi.ime,igrachi.prezime,igrachi.pozicija,igrachi.godini,uprava.zalaganje,uprava.rabotna_ocenka,igrachi.ime as ime_igrachi,igrachi.prezime as prezime_igrachi,igrachi.pozicija as pozicija_igrachi,
        igrachi.godini as godini_igrachi".$this->table_name."
        inner JOIN igrachi
        ON igrachi.dres_id=uprava.dres_id");
    }
}
?>