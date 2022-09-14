<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/income.php";
class IncomeDAO extends Income
{
    //attributes class
    private $table_name="income";

    private $database = null;


    //constructor
    public function __construct($objDB)
    {
        $this->database= $objDB;
    }

    //methods

    /*
    public function insertIncome()
    {
       //$income_id=parent::getIncomeId();
        $ime=parent::getIme();
        $prezime=parent::getPrezime();
        $pozicija=parent::getPozicija();
        $godini=parent::getGodini();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();

        $columns_name="ime,prezime,pozicija,godini,klub,iznos_denari";
        $columns_value="'$ime','$prezime','$pozicija',$godini,'$klub',$iznos_denari";

        $this->database -> insertRow($this->table_name,$columns_name,$columns_value);//class database
    }
    */

    public function insertIncome()
    {
       //$income_id=parent::getIncomeId();
        $ime=parent::getIme();
        $prezime=parent::getPrezime();
        $pozicija=parent::getPozicija();
        $godini=parent::getGodini();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();

        $columns_value="'$ime','$prezime','$pozicija',$godini,'$klub',$iznos_denari";

        $this->database ->callStoredProcedure("_insert_income",$columns_value);  ;//class database
    }

/*
    public function deleteIncome()
    {
        $income_id=parent::getIncomeId();

        $pk_name="income_id";
        $pk_value=$income_id;

        $this->database -> deleteRow($this->table_name,$pk_name,$pk_value);//class database
    }
*/
    public function deleteIncome()
    {
        $income_id=parent::getIncomeId();
        $pk_value=$income_id;
        $this->database ->callStoredProcedure("_delete_income",$pk_value);;//class database
    }

    public function updateIncome()
    {
        $income_id=parent::getIncomeId();
        $ime=parent::getIme();
        $prezime=parent::getPrezime();
        $pozicija=parent::getPozicija();
        $godini=parent::getGodini();
        $klub=parent::getKlub();
        $iznos_denari=parent::getIznosDenari();

        $columns="  ime='$ime',
                    prezime='$prezime',
                    pozicija='$pozicija',
                    godini=$godini,
                    klub='$klub',
                    iznos_denari=$iznos_denari";

        $condition="income_id=$income_id";
    
        $this->database->updateRow($this->table_name,$columns,$condition);//class database      
    }
/*
    public function selectIncome()
    {
        return $this->database ->selectRow($this->table_name);
    }
*/
    public function selectIncome()
    {
        return $this->database ->selectRowStoredProcedure("_select_income");
    }
}
?>
