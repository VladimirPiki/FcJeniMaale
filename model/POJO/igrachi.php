<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Igrachi
{
    private $dres_id;
    private $ime;
    private $prezime;
    private $pozicija;
    private $godini;
    private $plata_denari;
    private $income_id;
    private $igrachi_img_path;
    
    /**
     * @param  $dres_id
     */
    public function setDresId ($dres_id):void
    {
        $this->dres_id=$dres_id;
    }
        
    /**
    * @param $ime
    */
    public function setIme ($ime):void
    {    
        $this->ime=$ime;
    }

        /**
         * @param $prezime
         */
        public function setPrezime($prezime):void
        {   
            $this->prezime=$prezime;
        }
        
        /**
         * @param $pozicija
         */
        public function setPozicija ($pozicija):void
        {   
            $this->pozicija=$pozicija;
        }

        /**
         * @param $godini
         */
        public function setGodini($godini):void
        {    
            $this->godini=$godini;
        }
        
        /**
         * @param $plata_denari
         */
        public function setPlataDenari ($plata_denari):void
        {          
            $this->plata_denari=$plata_denari;
        }

        /**
         * @param $income_id
         */
        public function setIncomeId ($income_id):void
        {         
           $this->income_id=$income_id;
        }

        /**
         * @param $igrachi_img_path
         */
        public function setIgrachiImgPath ($igrachi_img_path):void
        {       
            $this->igrachi_img_path=$igrachi_img_path;
        }
       
        /**
         * @return
         */
        public function getDresId ()
        {      
            return $this->dres_id;
        }

        /**
         * @return 
         */      
        public function getIme ()
        {       
            return $this->ime;
        }

        /**
         * @return 
         */
        public function getPrezime()
        {       
            return $this->prezime;
        }

        /**
         * @return 
         */
        public function getPozicija()
        {        
            return $this->pozicija;
        }

        /**
         * @return 
         */
        public function getGodini()
        {         
            return $this->godini;
        }

        /**
         * @return 
         */
        public function getPlataDenari()
        {        
            return $this->plata_denari;
        }
        
        /**
         * @return
         */
        public function getIncomeId()
        {         
            return $this->income_id;
        }
        
        /**
         * @return
         */
        public function getIgrachiImgPath()
        {           
            return $this->igrachi_img_path;
        }
}
?>