<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Income
{

    //class attributes
    private  $income_id;

    private  $ime;

    private  $prezime;

    private  $pozicija;

    private  $godini;

    private  $klub;

    private  $iznos_denari;

    //constructors

    //getters,setters
 
    /**
     * @return 
     */
    public function getIncomeId()
    {
        // TODO implement here
        return $this->income_id;
    }

    /**
     * @param  $income_id
     */
    public function setIncomeId( $income_id):void
    {
        // TODO implement here
        $this->income_id=$income_id;
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
    public function getPrezime() 
    {
        // TODO implement here
        return $this->prezime;
    }

    /**
     * @param  $prezime
     */
    public function setPrezime( $prezime):void
    {
        // TODO implement here
        $this->prezime=$prezime;
    }

    /**
     * @return
     */
    public function getPozicija()
    {
        // TODO implement here
        return $this->pozicija;
    }

    /**
     * @param  $pozicija
     */
    public function setPozicija( $pozicija):void
    {
        // TODO implement here
        $this->pozicija=$pozicija;
    }

    /**
     * @return 
     */
    public function getGodini() 
    {
        // TODO implement here
        return $this->godini;
    }

    /**
     * @param  $godini
     */
    public function setGodini( $godini):void
    {
        // TODO implement here
        $this->godini=$godini;
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
        return $this->iznos_denari;
    }

    /**
     * @param  $iznos_denari
     */
    public function setIznosDenari( $iznos_denari):void
    {
        // TODO implement here
        $this->iznos_denari=$iznos_denari;
    }

}
