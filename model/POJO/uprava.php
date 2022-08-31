<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Uprava
{
    //class attributes
    private  $dres_id;

    private  $zalaganje;

    private  $rabotna_ocenka;

    //constructors

    //getters,setters

    /**
     * @return
     */
    public function getDresId() 
    {
        // TODO implement here
        return $this->dres_id;
    }

    /**
     * @param  $dres_id
     */
    public function setDresId( $dres_id):void
    {
        // TODO implement here
        $this->dres_id=$dres_id;
    }

    /**
     * @return
     */
    public function getZalaganje() 
    {
        // TODO implement here
        return $this->zalaganje;
    }

    /**
     * @param  $zalaganje
     */
    public function setZalaganje( $zalaganje):void
    {
        // TODO implement here
        $this->zalaganje=$zalaganje;
    }

    /**
     * @return
     */
    public function getRabotnaOcenka() 
    {
        // TODO implement here
        return $this->rabotna_ocenka;
    }
 
    /**
     * @param  $rabotna_ocenka
     */
    public function setRabotnaOcenka( $rabotna_ocenka):void
    {
        // TODO implement here
        $this->rabotna_ocenka=$rabotna_ocenka;
    }

}
