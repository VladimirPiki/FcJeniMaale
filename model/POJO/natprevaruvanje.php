<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Natprevaruvanje
{
    //class attributes
    private  $kolo_id;

    private  $datum;

    private  $protivnik;

    private  $rezultat;

    private  $mesto;

    private  $sostav_id;

    private  $stadion_id;

    private  $datum_id;


    //constructors

    //getters,setters
 

    /**
     * @return 
     */
    public function getKoloId()
    {
        // TODO implement here
        return $this->kolo_id;
    }

    /**
     * @param  $kolo_id
     */
    public function setKoloId( $kolo_id):void
    {
        // TODO implement here
        $this->kolo_id=$kolo_id;
    }

    /**
     * @return string
     */
    public function getDatum()
    {
        // TODO implement here
        return $this->datum;
    }

    /**
     * @param  $datum
     */
    public function setDatum( $datum):void
    {
        // TODO implement here
        $this->datum=$datum;
    }

    /** 
     * @return string
     */
    public function getProtivnik() 
    {
        // TODO implement here
        return $this->protivnik;
    }

    /**
     * @param  $protivnik
     */
    public function setProtivnik( $protivnik):void
    {
        // TODO implement here
        $this->protivnik=$protivnik;
    }

    /**
     * @return 
     */
    public function getRezultat()
    {
        // TODO implement here
        return $this->rezultat;
    }

    /**
     * @param  $rezultat
     */
    public function setRezultat( $rezultat):void
    {
        // TODO implement here
        $this->rezultat=$rezultat;
    }

    /**
     * @return string
     */
    public function getMesto()
    {
        // TODO implement here
        return $this->mesto;
    }

    /**
     * @param  $mesto
     */
    public function setMesto( $mesto):void
    {
        // TODO implement here
        $this->mesto=$mesto;
    }

    /**
     * @return 
     */
    public function getSostavId()
    {
        // TODO implement here
        return $this->sostav_id;
    }

    /**
     * @param  $sostav_id
     */
    public function setSostavId( $sostav_id):void
    {
        // TODO implement here
        $this->sostav_id=$sostav_id;
    }

    /**
     * @return
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
     * @return string
     */
    public function getDatumId() 
    {
        // TODO implement here
        return $this->datum_id;
    }

    /**
     * @param  $datum_id
     */
    public function setDatumId( $datum_id):void
    {
        // TODO implement here
        $this->datum_id=$datum_id;
    }

}
