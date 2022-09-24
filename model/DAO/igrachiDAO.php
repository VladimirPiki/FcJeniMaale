<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

require_once "POJO/igrachi.php";

class IgrachiDAO extends Igrachi
{
    private $table_name="igrachi";
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
    public function insertIgrachi()
    {
       $dres_id=parent::getDresId();
       $ime=parent::getIme();
       $prezime=parent::getPrezime();
       $pozicija=parent::getPozicija();
       $godini=parent::getGodini();
       $plata_denari=parent::getPlataDenari();
       $income_id=parent::getIncomeId();
       $igrachi_img_path=parent::getIgrachiImgPath();
       $columns_value="$dres_id,'$ime','$prezime','$pozicija',$godini,$plata_denari,$income_id,'$igrachi_img_path'";
       $this->database ->callStoredProcedure("_insert_igrachi",$columns_value);  
    }

    /**
     * @return [type]
     */
    public function deleteIgrachi()
    {
        $dres_id=parent::getDresId();
        $pk_value=$dres_id;
        $this->database ->callStoredProcedure("_delete_igrachi",$pk_value);
    }

    /**
     * @return [type]
     */
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
        $this->database->updateRow($this->table_name,$columns,$condition);
    }

    /**
     * @return [type]
     */
    public function selectIgrachi ()
    {   
        return $this->database ->selectRowStoredProcedure("_select_igrachi");
    }
}
?>
