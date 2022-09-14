<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/natprevaruvanje.php";
class NatprevaruvanjeDAO extends Natprevaruvanje
{
      private $table_name="natprevaruvanje";
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
      public function insertNatprevaruvanje()
      {
        $kolo_id=parent::getKoloId();
        $datum=parent::getDatum();
        $protivnik=parent::getProtivnik();
        $rezultat=parent::getRezultat();
        $mesto=parent::getMesto();
        $sostav_id=parent::getSostavID();
        $stadion_id=parent::getStadionId();
        $datum_id=parent::getDatumId();

        $columns_value="$kolo_id,'$datum','$protivnik','$rezultat','$mesto',$sostav_id,$stadion_id,'$datum_id'";
        $this->database ->callStoredProcedure("_insert_natprevaruvanje",$columns_value);  
      }

      /**
       * @return [type]
       */
      public function deleteNatprevaruvanje()
      {
        $kolo_id=parent::getKoloId();
        $pk_value=$kolo_id;
        $this->database ->callStoredProcedure("_delete_natprevaruvanje",$pk_value);;//class database
      }

      /**
       * @return [type]
       */
      public function updateNatprevaruvanje()
      {
        $kolo_id=parent::getKoloId();
        $datum=parent::getDatum();
        $protivnik=parent::getProtivnik();
        $rezultat=parent::getRezultat();
        $mesto=parent::getMesto();
        $sostav_id=parent::getSostavID();
        $stadion_id=parent::getStadionId();
        $datum_id=parent::getDatumId();

        $columns="  datum='$datum',
                    protivnik='$protivnik',
                    rezultat='$rezultat',
                    mesto='$mesto',
                    sostav_id=$sostav_id,
                    stadion_id=$stadion_id,
                    datum_id='$datum_id'    ";

        $condition="kolo_id=$kolo_id";
        
        $this->database->updateRow($this->table_name,$columns,$condition);//class database

      }

      /**
       * @return [type]
       */
      public function selectNatprevaruvanje()
      {
      return $this->database -> selectRow($this->table_name."
      LEFT JOIN stadion
	    ON (stadion.stadion_id=natprevaruvanje.stadion_id)
      LEFT JOIN publika
	    ON (publika.datum_id=natprevaruvanje.datum_id)");
      }

}

?>