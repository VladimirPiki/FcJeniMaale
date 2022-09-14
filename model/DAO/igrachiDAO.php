<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/igrachi.php";

class IgrachiDAO extends Igrachi
{
    //attributes class
    private $table_name="igrachi";
    private $database = null;
    //constructor
    public function __construct( $objDB)
    {
        $this->database= $objDB;
    }

    //methods

    public function insertIgrachi()
    {
       //$dres_id=parent::getDresId();
       $ime=parent::getIme();
       $prezime=parent::getPrezime();
       $pozicija=parent::getPozicija();
       $godini=parent::getGodini();
       $plata_denari=parent::getPlataDenari();
        $income_id=parent::getIncomeId();

       $columns_name="ime,prezime,pozicija,godini,plata_denari,income_id";
       $columns_value="'$ime','$prezime','$pozicija',$godini,$plata_denari,$income_id";

       $this->database ->insertRow($this->table_name,$columns_name,$columns_value);

       
    }
/*
    public function deleteIgrachi()
    {
        $dres_id=parent::getDresId();

        $pk_name="dres_id";
        $pk_value=$dres_id;

       $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);
    }
*/
    public function deleteIgrachi()
    {
        $dres_id=parent::getDresId();
        $pk_value=$dres_id;
        $this->database ->callStoredProcedure("_delete_igrachi",$pk_value);
    }

    public function updateIgrachi()
    {
        $dres_id=parent::getDresId();
        $ime=parent::getIme();
        $prezime=parent::getPrezime();
        $pozicija=parent::getPozicija();
        $godini=parent::getGodini();
        $plata_denari=parent::getPlataDenari();
        $income_id=parent::getIncomeId();

        $columns="  ime='$ime',
        prezime='$prezime',
        pozicija='$pozicija',
        godini=$godini,
        plata_denari=$plata_denari,
        income_id=$income_id";

        $condition="dres_id=$dres_id";
        
        $this->database->updateRow($this->table_name,$columns,$condition);//class database

    }

    public function selectIgrachi ()
    {   
        return $this->database ->selectRowFilds("*,income.ime as ime_income,income.prezime as prezime_income,
        income.pozicija as pozicija_income,income.godini as godini_income,
        igrachi.ime as ime_igrachi,igrachi.prezime as prezime_igrachi,igrachi.pozicija as pozicija_igrachi,
        igrachi.godini as godini_igrachi",$this->table_name."
        LEFT JOIN income
        ON income.income_id=igrachi.income_id");
    }
}
?>
