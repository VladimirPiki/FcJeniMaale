<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Publika
{
    //class attributes

    private  $datum_id;

    private  $domashna;

    private  $gostinska;

    private  $karti_rasprodadeni;

    //constructors

    //getters,setters

    /**
     * @return
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

    /**
     * @return
     */
    public function getDomashna() 
    {
        // TODO implement here
        return $this->domashna;
    }

    /**
     * @param  $domashna
     */
    public function setDomashna( $domashna):void
    {
        // TODO implement here
        $this->domashna=$domashna;
    }

    /**
     * @return
     */
    public function getGostinska() 
    {
        // TODO implement here
        return $this->gostinska;
    }

    /**
     * @param  $gostinska
     */
    public function setGostinska( $gostinska):void
    {
        // TODO implement here
        $this->gostinska=$gostinska;
    }

    /**
     * @return
     */
    public function getKartiRasprodadeni() 
    {
        // TODO implement here
        return $this->karti_rasprodadeni;
    }

    /**
     * @param  $karti_rasprodadeni
     */
    public function setKartiRasprodadeni( $karti_rasprodadeni):void
    {
        // TODO implement here
        $this->karti_rasprodadeni=$karti_rasprodadeni;
    }

}
