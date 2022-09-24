<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Stadion
{ 
    private $stadion_id;
    private  $ime;
    private  $adresa;
    private  $kapacitet;
 
    /**
     * @return string
     */
    public function getStadionId()
    { 
        return $this->stadion_id;
    }

    /**
     * @param  $stadion_id
     */
    public function setStadionId( $stadion_id):void
    {
        $this->stadion_id=$stadion_id;
    }

    /**
     * @return
     */
    public function getIme() 
    {
        return $this->ime;
    }

    /**
     * @param  $ime
     */
    public function setIme( $ime):void
    {
        $this->ime=$ime;
    }

    /**
     * @return
     */
    public function getAdresa() 
    {  
        return $this->adresa;
    }

    /**
     * @param  $adresa
     */
    public function setAdresa( $adresa):void
    {      
        $this->adresa=$adresa;
    }

    /**
     * @return
     */
    public function getKapacitet()
    {       
        return $this->kapacitet;
    }

    /**
     * @param  $kapacitet
     */
    public function setKapacitet( $kapacitet):void
    {      
        $this->kapacitet=$kapacitet;
    }

}
?>