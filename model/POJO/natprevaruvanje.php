<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Natprevaruvanje
{  
    private  $kolo_id;
    private  $datum;
    private  $protivnik;
    private  $rezultat;
    private  $mesto;
    private  $sostav_id;
    private  $stadion_id;
    private  $datum_id;

    /**
     * @return 
     */
    public function getKoloId()
    {
        return $this->kolo_id;
    }

    /**
     * @param  $kolo_id
     */
    public function setKoloId( $kolo_id):void
    {
        $this->kolo_id=$kolo_id;
    }

    /**
     * @return string
     */
    public function getDatum()
    {
        return $this->datum;
    }

    /**
     * @param  $datum
     */
    public function setDatum( $datum):void
    {
        $this->datum=$datum;
    }

    /** 
     * @return string
     */
    public function getProtivnik() 
    {
        return $this->protivnik;
    }

    /**
     * @param  $protivnik
     */
    public function setProtivnik( $protivnik):void
    {
        $this->protivnik=$protivnik;
    }

    /**
     * @return 
     */
    public function getRezultat()
    {
        return $this->rezultat;
    }

    /**
     * @param  $rezultat
     */
    public function setRezultat( $rezultat):void
    {
        $this->rezultat=$rezultat;
    }

    /**
     * @return string
     */
    public function getMesto()
    {
        return $this->mesto;
    }

    /**
     * @param  $mesto
     */
    public function setMesto( $mesto):void
    {
        $this->mesto=$mesto;
    }

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
     * @return string
     */
    public function getDatumId() 
    {
        return $this->datum_id;
    }

    /**
     * @param  $datum_id
     */
    public function setDatumId( $datum_id):void
    {
        $this->datum_id=$datum_id;
    }
}
?>