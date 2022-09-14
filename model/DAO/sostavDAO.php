<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/sostav.php";
class SostavDAO extends Sostav
{
    
     private $table_name="sostav";
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
    public function insertSostav()
    {
        $sostav_id=parent::getSostavId();
        $datum_sostav=parent::getDatumSostav();
        $coach=parent::getCoach();
        $goalkeeper=parent::getGoalkeeper();
        $centre_back1=parent::getCentreBack1();
        $centre_back2=parent::getCentreBack2();
        $right_back=parent::getRightBack();
        $left_back=parent::getLeftBack();
        $defensive_midfielder=parent::getDefensiveMidfielder();
        $center_midfielder=parent::getCenterMidfielder();
        $attacking_midfielder=parent::getAttackingMidfielder();
        $right_forward=parent::getRightForward();
        $left_forward=parent::getLeftForward();
        $center_forward=parent::getCenterForward();
        $reserve1=parent::getReserve1();
        $reserve2=parent::getReserve2();
        $reserve3=parent::getReserve3();
        $reserve4=parent::getReserve4();
        $reserve5=parent::getReserve5();
        $reserve6=parent::getReserve6();
        $reserve7=parent::getReserve7();

        $columns_name=" sostav_id,
                        datum_sostav,
                        coach,
                        goalkeeper,
                        centre_back1,
                        centre_back2,
                        right_back,
                        left_back,
                        defensive_midfielder,
                        center_midfielder,
                        attacking_midfielder,
                        right_forward,
                        left_forward,
                        center_forward,
                        reserve1,
                        reserve2,
                        reserve3,
                        reserve4,
                        reserve5,
                        reserve6,
                        reserve7";

        $columns_value="$sostav_id,
                        '$datum_sostav',
                        $coach,
                        $goalkeeper,
                        $centre_back1,
                        $centre_back2,
                        $right_back,
                        $left_back,
                        $defensive_midfielder,
                        $center_midfielder,
                        $attacking_midfielder,
                        $right_forward,
                        $left_forward,
                        $center_forward,
                        $reserve1,
                        $reserve2,
                        $reserve3,
                        $reserve4,
                        $reserve5,
                        $reserve6,
                        $reserve7";


        $this->database -> insertRow($this->table_name,$columns_name,$columns_value);

     
    }

    /**
     * @return [type]
     */
    public function deleteSostav()
    {
        $sostav_id=parent::getSostavId();

        $pk_name="sostav_id";
        $pk_value=$sostav_id;

        $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);

        
    }

    /**
     * @return [type]
     */
    public function updateSostav ()
    {
        $sostav_id=parent::getSostavId();
        $datum_sostav=parent::getDatumSostav();
        $coach=parent::getCoach();
        $goalkeeper=parent::getGoalkeeper();
        $centre_back1=parent::getCentreBack1();
        $centre_back2=parent::getCentreBack2();
        $right_back=parent::getRightBack();
        $left_back=parent::getLeftBack();
        $defensive_midfielder=parent::getDefensiveMidfielder();
        $center_midfielder=parent::getCenterMidfielder();
        $attacking_midfielder=parent::getAttackingMidfielder();
        $right_forward=parent::getRightForward();
        $left_forward=parent::getLeftForward();
        $center_forward=parent::getCenterForward();
        $reserve1=parent::getReserve1();
        $reserve2=parent::getReserve2();
        $reserve3=parent::getReserve3();
        $reserve4=parent::getReserve4();
        $reserve5=parent::getReserve5();
        $reserve6=parent::getReserve6();
        $reserve7=parent::getReserve7();



        $columns="  datum_sostav='$datum_sostav',
                    coach=$coach,
                    goalkeeper=$goalkeeper,
                    centre_back1=$centre_back1,
                    centre_back2=$centre_back2,
                    right_back=$right_back,
                    left_back=$left_back,
                    defensive_midfielder=$defensive_midfielder,
                    center_midfielder=$center_midfielder,
                    attacking_midfielder=$attacking_midfielder,
                    right_forward=$right_forward,
                    left_forward=$left_forward,
                    center_forward=$center_forward,
                    reserve1=$reserve1,
                    reserve2=$reserve2,
                    reserve3=$reserve3,
                    reserve4=$reserve4,
                    reserve5=$reserve5,
                    reserve6=$reserve6,
                    reserve7=$reserve7";

        $condition="sostav_id=$sostav_id";
        
        $this->database->updateRow($this->table_name,$columns,$condition);
    }
    
    /**
     * @return [type]
     */
    public function selectSostav(){
        return $this->database ->selectRowStoredProcedure("_select_sostav_natprevaruvanje");
    }
    
}
?>