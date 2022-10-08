<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Uprava
{  
    private  $dres_id;
    private  $zalaganje;
    private  $rabotna_ocenka;
    private  $uprava_img_path;


    /**
     * @return
     */
    public function getDresId() 
    {  
        return $this->dres_id;
    }

    /**
     * @param  $dres_id
     */
    public function setDresId( $dres_id):void
    {  
         $this->dres_id=$dres_id;
    }

    /**
     * @return
     */
    public function getZalaganje() 
    {    
        return $this->zalaganje;
    }

    /**
     * @param  $zalaganje
     */
    public function setZalaganje( $zalaganje):void
    {        
        $this->zalaganje=$zalaganje;
    }

    /**
     * @return
     */
    public function getRabotnaOcenka() 
    {      
        return $this->rabotna_ocenka;
    }
 
    /**
     * @param  $rabotna_ocenka
     */
    public function setRabotnaOcenka( $rabotna_ocenka):void
    {   
        $this->rabotna_ocenka=$rabotna_ocenka;
    }

    /**
     * @return [type]
     */
    public function getUpravaImgPath()
    {
        return $this->uprava_img_path;
    }

    /**
     * @param mixed $uprava_img_path
     * 
     * @return [type]
     */
    public function setUpravaImgPath($uprava_img_path)
    {
        $this->uprava_img_path=$uprava_img_path;
    }
}
?>