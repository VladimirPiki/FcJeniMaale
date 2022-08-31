<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Stadion
{
    //class attributes
    private $stadion_id;

    private  $ime;

    private  $adresa;

    private  $kapacitet;

    //constructors

    //getters,setters
 
    /**
     * @return string
     */
    public function getStadionId()
    {
        // TODO implement here
        return $this->stadion_id;
    }

    /**
     * @param  $stadion_id
     */
    public function setStadionId( $stadion_id):void
    {
         // TODO implement here
        $this->stadion_id=$stadion_id;
    }

    /**
     * @return
     */
    public function getIme() 
    {
        // TODO implement here
        return $this->ime;
    }

    /**
     * @param  $ime
     */
    public function setIme( $ime):void
    {
         // TODO implement here
        $this->ime=$ime;
    }

    /**
     * @return
     */
    public function getAdresa() 
    {
        // TODO implement here
        return $this->adresa;
    }

    /**
     * @param  $adresa
     */
    public function setAdresa( $adresa):void
    {
         // TODO implement here
        $this->adresa=$adresa;
    }

    /**
     * @return
     */
    public function getKapacitet()
    {
        // TODO implement here
        return $this->kapacitet;
    }

    /**
     * @param  $kapacitet
     */
    public function setKapacitet( $kapacitet):void
    {
         // TODO implement here
        $this->kapacitet=$kapacitet;
    }

}
