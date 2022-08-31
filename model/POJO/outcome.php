<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Outcome
{
    //class attributes
    private  $outcome_id;

    private  $klub;

    private  $iznos_denari;

    private  $dres_id;

    //constructors

    //getters,setters

    /**
     * @return
     */
    public function getOutcomeId()
    {
        // TODO implement here
       return $this->outcome_id;
    }

    /**
     * @param $outcome_id
     */
    public function setOutcomeId( $outcome_id):void
    {
        // TODO implement here
        $this->outcome_id=$outcome_id;
    }

    /**
     * @return
     */
    public function getKlub() 
    {
        // TODO implement here
        return $this->klub;
    }

    /**
     * @param  $klub
     */
    public function setKlub( $klub):void
    {
        // TODO implement here
        $this->klub=$klub;
    }

    /**
     * @return
     */
    public function getIznosDenari() 
    {
        // TODO implement here
        return  $this->iznos_denari;
    }

    /**
     * @param  $iznos_denari
     */
    public function setIznosDenari( $iznos_denari):void
    {
        // TODO implement here
        $this->iznos_denari=$iznos_denari;
    }

    /**
     * @return
     */
    public function getDresId() 
    {
        // TODO implement here
        return  $this->dres_id;
    }

    /**
     * @param  $dres_id
     */
    public function setDresId( $dres_id):void
    {
        // TODO implement here
        $this->dres_id=$dres_id;
    }

}
