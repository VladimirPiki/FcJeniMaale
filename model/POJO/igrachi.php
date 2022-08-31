<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

class Igrachi
{
       
    //class attributes
         private $dres_id;

         private $ime;

         private $prezime;

         private $pozicija;

         private $godini;

         private $plata_denari;
         
         private $income_id;
    //constructors

    //setters

    /**
     * @param  $dres_id
     */
        public function setDresId ($dres_id):void
        {
            // TODO implement here
            $this->dres_id=$dres_id;
        }
        
        /**
         * @param $ime
         */
        public function setIme ($ime):void
        {
            // TODO implement here
            $this->ime=$ime;
        }

        /**
         * @param $prezime
         */
        public function setPrezime($prezime):void
        {
            // TODO implement here
            $this->prezime=$prezime;
        }
        
        /**
         * @param $pozicija
         */
        public function setPozicija ($pozicija):void
        {
            // TODO implement here
            $this->pozicija=$pozicija;
        }

        /**
         * @param $godini
         */
        public function setGodini($godini):void
        {
            // TODO implement here
            $this->godini=$godini;
        }
        
        /**
         * @param $plata_denari
         */
        public function setPlataDenari ($plata_denari):void
        {
            // TODO implement here
            $this->plata_denari=$plata_denari;
        }

        /**
         * @param $income_id
         */
        public function setIncomeId ($income_id):void
        {
            // TODO implement here
            $this->income_id=$income_id;
        }

        //getters
        
        /**
         * @return
         */
        public function getDresId ()
        {
            // TODO implement here
            return $this->dres_id;
        }

        /**
         * @return 
         */      
        public function getIme ()
        {
            // TODO implement here
            return $this->ime;
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
         * @return 
         */
        public function getPozicija()
        {
            // TODO implement here
            return $this->pozicija;
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
         * @return 
         */
        public function getPlataDenari()
        {
            // TODO implement here
            return $this->plata_denari;
        }
        
        /**
         * @return
         */
        public function getIncomeId()
        {
            // TODO implement here
            return $this->income_id;
        }

}
?>