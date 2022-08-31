<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

require_once "POJO/sostav.php";
class SostavDAO extends Sostav
{
     //attributes class
     private $table_name="sostav";
     private $database = null;
     //constructor
     public function __construct( $objDB)
     {
         $this->database= $objDB;
     }
     //methods

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

    public function deleteSostav()
    {
        $sostav_id=parent::getSostavId();

        $pk_name="sostav_id";
        $pk_value=$sostav_id;

        $this->database ->deleteRow($this->table_name,$pk_name,$pk_value);

        
    }

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
        
        $this->database->updateRow($this->table_name,$columns,$condition);//class database
    }
/*
    public function selectSostav ()
    {  
        return $this->database ->selectRow($this->table_name."
        LEFT JOIN igrachi AS igrachi1
        ON igrachi1.dres_id=sostav.sostav_id
        LEFT JOIN igrachi AS igrachi2
        ON igrachi2.dres_id=sostav.coach
        LEFT JOIN igrachi AS igrachi3
        ON igrachi3.dres_id=sostav.goalkeeper
        LEFT JOIN igrachi AS igrachi4
        ON igrachi4.dres_id=sostav.centre_back1
        LEFT JOIN igrachi AS igrachi5
        ON igrachi5.dres_id=sostav.centre_back2
        LEFT JOIN igrachi AS igrachi6
        ON igrachi6.dres_id=sostav.right_back
        LEFT JOIN igrachi AS igrachi7
        ON igrachi7.dres_id=sostav.left_back
        LEFT JOIN igrachi AS igrachi8
        ON igrachi8.dres_id=sostav.defensive_midfielder
        LEFT JOIN igrachi AS igrachi9
        ON igrachi9.dres_id=sostav.center_midfielder
        LEFT JOIN igrachi AS igrachi10
        ON igrachi10.dres_id=sostav.attacking_midfielder
        LEFT JOIN igrachi AS igrachi11
        ON igrachi11.dres_id=sostav.right_forward
        LEFT JOIN igrachi AS igrachi12
        ON igrachi12.dres_id=sostav.left_forward
        LEFT JOIN igrachi AS igrachi13
        ON igrachi13.dres_id=sostav.center_forward
        LEFT JOIN igrachi AS igrachi14
        ON igrachi14.dres_id=sostav.reserve1
        LEFT JOIN igrachi AS igrachi15
        ON igrachi15.dres_id=sostav.reserve2
        LEFT JOIN igrachi AS igrachi16
        ON igrachi16.dres_id=sostav.reserve3
        LEFT JOIN igrachi AS igrachi17
        ON igrachi17.dres_id=sostav.reserve4
        LEFT JOIN igrachi AS igrachi18
        ON igrachi18.dres_id=sostav.reserve5
        LEFT JOIN igrachi AS igrachi19
        ON igrachi19.dres_id=sostav.reserve6
        LEFT JOIN igrachi AS igrachi20
        ON igrachi20.dres_id=sostav.reserve7"
    );   
    }
    */

    public function selectSostav(){
        return $this->database ->selectRowFilds("*",$this->table_name."
        right JOIN igrachi
	    ON igrachi.dres_id=sostav.sostav_id");
    }
}
?>