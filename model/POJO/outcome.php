<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Outcome
{
 
    private  $outcome_id;

    private  $klub;

    private  $iznos_denari;

    private  $dres_id;



    /**
     * @return
     */
    public function getOutcomeId()
    {
        
       return $this->outcome_id;
    }

    /**
     * @param $outcome_id
     */
    public function setOutcomeId( $outcome_id):void
    {
        
        $this->outcome_id=$outcome_id;
    }

    /**
     * @return
     */
    public function getKlub() 
    {
    
        return $this->klub;
    }

    /**
     * @param  $klub
     */
    public function setKlub( $klub):void
    {
       
        $this->klub=$klub;
    }

    /**
     * @return
     */
    public function getIznosDenari() 
    {
       
        return  $this->iznos_denari;
    }

    /**
     * @param  $iznos_denari
     */
    public function setIznosDenari( $iznos_denari):void
    {
       
        $this->iznos_denari=$iznos_denari;
    }

    /**
     * @return
     */
    public function getDresId() 
    {
       
        return  $this->dres_id;
    }

    /**
     * @param  $dres_id
     */
    public function setDresId( $dres_id):void
    {
      
        $this->dres_id=$dres_id;
    }

}
