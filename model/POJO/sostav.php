<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Sostav
{
    private  $sostav_id;
    private  $datum_sostav;
    private  $coach;
    private  $goalkeeper;
    private  $centre_back1;
    private  $centre_back2;
    private  $right_back;
    private  $left_back;
    private  $defensive_midfielder;
    private  $center_midfielder;
    private  $attacking_midfielder;
    private  $right_forward;
    private  $left_forward;
    private  $center_forward;
    private  $reserve1;
    private  $reserve2;
    private  $reserve3;
    private  $reserve4;
    private  $reserve5;
    private  $reserve6;
    private  $reserve7;
    private $sostav_img_path;

    /**
     * @return
     */
    public function getSostavId() 
    {
        return $this->sostav_id;
    }

    /**
     * @param  $sostav_id
     */
    public function setSostavId( $sostav_id):void
    {
        $this->sostav_id=$sostav_id;
    }

    /**
     * @return
     */
    public function getDatumSostav() 
    {
        return $this->datum_sostav;
    }

    /**
     * @param  $datum
     */
    public function setDatumSostav( $datum_sostav):void
    {
        $this->datum_sostav=$datum_sostav;
    }

    /**
     * @return
     */
    public function getCoach() 
    {
        return $this->coach;
    }

    /**
     * @param  $coach
     */
    public function setCoach( $coach):void
    {
        $this->coach=$coach;
    }

    /**
     * @return
     */
    public function getGoalkeeper() 
    {
        return $this->goalkeeper;
    }

    /**
     * @param  $goalkeeper
     */
    public function setGoalkeeper( $goalkeeper):void
    {
        $this->goalkeeper=$goalkeeper;
    }

    /**
     * @return
     */
    public function getCentreBack1() 
    {
        return $this->centre_back1;
    }

    /**
     * @param  $centre_back1
     */
    public function setCentreBack1( $centre_back1):void
    {
        $this->centre_back1=$centre_back1;
    }

    /**
     * @return
     */
    public function getCentreBack2() 
    {
        return $this->centre_back2;
    }

    /**
     * @param  $centre_back2
     */
    public function setCentreBack2( $centre_back2):void
    {
        $this->centre_back2=$centre_back2;
    }

    /**
     * @return
     */
    public function getRightBack() 
    {
        return $this->right_back;
    }

    /**
     * @param  $right_back
     */
    public function setRightBack( $right_back):void
    {
        $this->right_back=$right_back;
    }

    /**
     * @return
     */
    public function getLeftBack() 
    {
        return $this->left_back;
    }

    /**
     * @param  $left_back
     */
    public function setLeftBack( $left_back):void
    {
        $this->left_back=$left_back;
    }

    /**
     * @return
     */
    public function getDefensiveMidfielder() 
    {
        return $this->defensive_midfielder;
    }

    /**
     * @param  $defensive_midfielder
     */
    public function setDefensiveMidfielder( $defensive_midfielder):void
    {
        $this->defensive_midfielder=$defensive_midfielder;
    }

    /**
     * @return
     */
    public function getCenterMidfielder() 
    {
        return $this->center_midfielder;
    }

    /**
     * @param  $center_midfielder
     */
    public function setCenterMidfielder( $center_midfielder):void
    {
        $this->center_midfielder=$center_midfielder;
    }

    /**
     * @return
     */
    public function getAttackingMidfielder() 
    {
        return $this->attacking_midfielder;
    }

    /**
     * @param  $attacking_midfielder
     */
    public function setAttackingMidfielder( $attacking_midfielder):void
    {
        $this->attacking_midfielder=$attacking_midfielder;
    }

    /**
     * @return
     */
    public function getRightForward()
    {
        return $this->right_forward;
    }

    /**
     * @param  $right_forward
     */
    public function setRightForward( $right_forward):void
    {
        $this->right_forward=$right_forward;
    }

    /**
     * @return
     */
    public function getLeftForward() 
    {
        return $this->left_forward;
    }

    /**
     * @param  $left_forward
     */
    public function setLeftForward( $left_forward):void
    {
        $this->left_forward=$left_forward;
    }

    /**
     * @return
     */
    public function getCenterForward() 
    {
         return $this->center_forward;
    }

    /**
     * @param  $center_forward
     */
    public function setCenterForward( $center_forward):void
    {
        $this->center_forward=$center_forward;
    }

    /**
     * @return
     */
    public function getReserve1()
    {
        return $this->reserve1;
    }

    /**
     * @param  $reserve1
     */
    public function setReserve1( $reserve1):void
    {
        $this->reserve1=$reserve1;
    }

    /**
     * @return
     */
    public function getReserve2() 
    {
        return $this->reserve2;
    }

    /**
     * @param  $reserve2
     */
    public function setReserve2( $reserve2):void
    {
        $this->reserve2=$reserve2;
    }

    /**
     * @return
     */
    public function getReserve3() 
    {
        return $this->reserve3;
    }

    /**
     * @param  $reserve3
     */
    public function setReserve3( $reserve3):void
    {
        $this->reserve3=$reserve3;
    }

    /**
     * @return
     */
    public function getReserve4() 
    {
        return $this->reserve4;
    }

    /**
     * @param  $reserve4
     */
    public function setReserve4( $reserve4):void
    {
        $this->reserve4=$reserve4;
    }

    /**
     * @return
     */
    public function getReserve5() 
    {
        return $this->reserve5;
    }

    /**
     * @param  $reserve5
     */
    public function setReserve5( $reserve5):void
    {
        $this->reserve5=$reserve5;
    }

    /**
     * @return
     */
    public function getReserve6() 
    {
        return $this->reserve6;
    }

    /**
     * @param  $reserve6
     */
    public function setReserve6( $reserve6):void
    {
        $this->reserve6=$reserve6;
    }

    /**
     * @return
     */
    public function getReserve7() 
    {
        return $this->reserve7;
    }

    /**
     * @param  $reserve7
     */
    public function setReserve7( $reserve7):void
    {
        $this->reserve7=$reserve7;
    }

    /**
     * @return
     */
    public function getSostavImgPath() 
    {
        return $this->sostav_img_path;
    }

    /**
     * @param  $sostav_img_path
     */
    public function setSostavImgPath( $sostav_img_path)
    {
        $this->sostav_img_path=$sostav_img_path;
    }
}
?>