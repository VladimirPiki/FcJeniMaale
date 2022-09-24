<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Income
{
    private  $income_id;
    private  $ime;
    private  $prezime;
    private  $pozicija;
    private  $godini;
    private  $klub;
    private  $iznos_denari;
    private $income_img_path;

    /**
     * @return 
     */
    public function getIncomeId()
    {       
        return $this->income_id;
    }

    /**
     * @param  $income_id
     */
    public function setIncomeId( $income_id):void
    {     
        $this->income_id=$income_id;
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
    public function getPrezime() 
    {    
        return $this->prezime;
    }

    /**
     * @param  $prezime
     */
    public function setPrezime( $prezime):void
    {    
        $this->prezime=$prezime;
    }

    /**
     * @return
     */
    public function getPozicija()
    {    
        return $this->pozicija;
    }

    /**
     * @param  $pozicija
     */
    public function setPozicija( $pozicija):void
    { 
        $this->pozicija=$pozicija;
    }

    /**
     * @return 
     */
    public function getGodini() 
    {  
        return $this->godini;
    }

    /**
     * @param  $godini
     */
    public function setGodini( $godini):void
    {   
        $this->godini=$godini;
    }

    /**
     * @return 
     */
    public function getKlub() 
    {  
        return $this->klub;
    }

    /**
     * @param  $klub
     */
    public function setKlub( $klub):void
    {   
        $this->klub=$klub;
    }

    /**
     * @return 
     */
    public function getIznosDenari()
    {  
        return $this->iznos_denari;
    }

    /**
     * @param  $iznos_denari
     */
    public function setIznosDenari( $iznos_denari):void
    {
        $this->iznos_denari=$iznos_denari;
    }

    /**
     * @return 
     */
    public function getIncomeImgPath()
    {
        return $this->income_img_path;
    }

    /**
     * @param  $income_img_path
     */
    public function setIncomeImgPath($income_img_path):void
    {
        $this->income_img_path=$income_img_path;
    }
}
?>