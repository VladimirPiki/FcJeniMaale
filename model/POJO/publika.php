<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Publika
{
    private  $datum_id;
    private  $domashna;
    private  $gostinska;
    private  $karti_rasprodadeni;

    /**
     * @return
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

    /**
     * @return
     */
    public function getDomashna() 
    {    
        return $this->domashna;
    }

    /**
     * @param  $domashna
     */
    public function setDomashna( $domashna):void
    {   
        $this->domashna=$domashna;
    }

    /**
     * @return
     */
    public function getGostinska() 
    {   
        return $this->gostinska;
    }

    /**
     * @param  $gostinska
     */
    public function setGostinska( $gostinska):void
    {   
        $this->gostinska=$gostinska;
    }

    /**
     * @return
     */
    public function getKartiRasprodadeni() 
    {   
        return $this->karti_rasprodadeni;
    }

    /**
     * @param  $karti_rasprodadeni
     */
    public function setKartiRasprodadeni( $karti_rasprodadeni):void
    {
     
        $this->karti_rasprodadeni=$karti_rasprodadeni;
    }
}
?>