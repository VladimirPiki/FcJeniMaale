<?php
require_once "POJO/publika.php";
class PublikaDAO extends Publika
{

    private $table_name="publika";
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
     public function insertPublika()
     {
        $datum_id=parent::getDatumId();
        $domashna=parent::getDomashna();
        $gostinska=parent::getGostinska();
        $karti_rasprodadeni=parent::getKartiRasprodadeni();

        $columns_value="'$datum_id',$domashna,$gostinska,$karti_rasprodadeni";
        $this->database ->callStoredProcedure("_insert_publika",$columns_value);
     }

     /**
      * @return [type]
      */
     public function deletePublika()
     {
        $datum_id=parent::getDatumId();
        $pk_value="'$datum_id'";
        $this->database ->callStoredProcedure("_delete_publika",$pk_value);
     }

     /**
      * @return [type]
      */
     public function updatePublika()
     {  
        $datum_id=parent::getDatumId();
        $domashna=parent::getDomashna();
        $gostinska=parent::getGostinska();
        $karti_rasprodadeni=parent::getKartiRasprodadeni();

        $columns="domashna=$domashna,gostinska=$gostinska,karti_rasprodadeni=$karti_rasprodadeni";

        $condition="datum_id='$datum_id'";

        $this->database->updateRow($this->table_name,$columns,$condition);
        
     }

     /**
      * @return [type]
      */
     public function selectPublika()
     {
      return $this->database ->selectRow($this->table_name);
     }
}
?>