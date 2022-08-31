<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

$data = json_decode(file_get_contents("php://input"));
var_dump($data);

 require_once "../lib/class_database.php";
 //           class name    __construct
 $objDB = new   DB            ();

//insert

//za koja tabela se raboti
$table_name=$data[0]->table_name;

switch($table_name)
{
    case "igrachi":

        //File path 
        require_once "DAO/igrachiDAO.php";

        //Database connection
        $objIgrachi = new IgrachiDAO( $objDB);

        //setters POJO

       // $objIgrachi->setDresId("1");// Primary key bidejki e autoincremet i mozam da go izbrisam no go ostavam
        $objIgrachi->setIme($data[0]->ime);
        $objIgrachi->setPrezime($data[0]->prezime);
        $objIgrachi->setPozicija($data[0]->pozicija);
        $objIgrachi->setGodini($data[0]->godini);
        $objIgrachi->setPlataDenari($data[0]->plata_denari);
        $objIgrachi->setIncomeId($data[0]->income_id);

        //DAO
        $objIgrachi ->insertIgrachi();

        

    break;

    case "income":
        require_once "DAO/incomeDAO.php";//file path
      
        $objIncome = new IncomeDAO( $objDB);
        //setters POJO
        //$objIncome->setIncomeId("1");
        $objIncome->setIme($data[0]->ime);
        $objIncome->setPrezime($data[0]->prezime);
        $objIncome->setPozicija($data[0]->pozicija);
        $objIncome->setGodini($data[0]->godini);
        $objIncome->setKlub($data[0]->klub);
        $objIncome->setIznosDenari($data[0]->iznos_denari);
        //DAO
        $objIncome ->insertIncome();
    break;

    case "natprevaruvanje":
        require_once "DAO/natprevaruvanjeDAO.php";//file path
        
        $objNatprevaruvanje = new NatprevaruvanjeDAO($objDB);
        //setters POJO
        $formatDatum=date("Y-m-d H:m:s",strtotime($data[0]->datum));
        //echo $data[0]->datum." ".$formatDatum;
        $objNatprevaruvanje ->setKoloId($data[0]->kolo_id);
        $objNatprevaruvanje ->setDatum($formatDatum);
        $objNatprevaruvanje ->setProtivnik($data[0]->protivnik);
        $objNatprevaruvanje ->setRezultat($data[0]->rezultat);
        $objNatprevaruvanje ->setMesto($data[0]->mesto);
        $objNatprevaruvanje ->setSostavId($data[0]->sostav_id);
        $objNatprevaruvanje ->setStadionId($data[0]->stadion_id);
        $objNatprevaruvanje ->setDatumId($data[0]->datum_id);
        //DAO
        $objNatprevaruvanje -> insertNatprevaruvanje();
    break;

    case "outcome":
        require_once "DAO/outcomeDAO.php";//file path
       
        $objOutcome = new OutcomeDAO($objDB);
         //setters POJO
         //$objOutcome ->setOutcomeId(1);
         $objOutcome ->setKlub($data[0]->klub);
         $objOutcome ->setIznosDenari($data[0]->iznos_denari);
         $objOutcome ->setDresId($data[0]->dres_id);
         //DAO
        $objOutcome ->insertOutcome();
    break;

    case "publika":
        require_once "DAO/publikaDAO.php";//file path
        
        $objPublika = new PublikaDAO($objDB);

        $formatDatumId=date("Y-m-d",strtotime($data[0]->datum_id));
        //setters POJO
        $objPublika ->setDatumId($formatDatumId);
        $objPublika ->setDomashna($data[0]->domashna);
        $objPublika ->setGostinska($data[0]->gostinska);
        $objPublika ->setKartiRasprodadeni($data[0]->karti_rasprodadeni);

        //DAO
        $objPublika ->insertPublika();
    break;

    case "sostav":
        require_once "DAO/sostavDAO.php";//file path
            
            $objSostav = new SostavDAO($objDB);
            //setters POJO
            $formatDatumSostav=date("Y-m-d H:m:s",strtotime($data[0]->datum_sostav));

            $objSostav ->setSostavId($data[0]->sostav_id);
            $objSostav ->setDatumSostav($formatDatumSostav);
            $objSostav ->setCoach($data[0]->coach);
            $objSostav ->setGoalkeeper($data[0]->goalkeeper);
            $objSostav ->setCentreBack1($data[0]->centre_back1);
            $objSostav ->setCentreBack2($data[0]->centre_back2);
            $objSostav ->setRightBack($data[0]->right_back);
            $objSostav ->setLeftBack($data[0]->left_back);
            $objSostav ->setDefensiveMidfielder($data[0]->defensive_midfielder);
            $objSostav ->setCenterMidfielder($data[0]->center_midfielder);
            $objSostav ->setAttackingMidfielder($data[0]->attacking_midfielder);
            $objSostav ->setRightForward($data[0]->right_forward);
            $objSostav ->setLeftForward($data[0]->left_forward);
            $objSostav ->setCenterForward($data[0]->center_forward);
            $objSostav ->setReserve1($data[0]->reserve1);
            $objSostav ->setReserve2($data[0]->reserve2);
            $objSostav ->setReserve3($data[0]->reserve3);
            $objSostav ->setReserve4($data[0]->reserve4);
            $objSostav ->setReserve5($data[0]->reserve5);
            $objSostav ->setReserve6($data[0]->reserve6);
            $objSostav ->setReserve7($data[0]->reserve7);
            //DAO
            $objSostav ->insertSostav();

    break;

    case "stadion":
        require_once "DAO/stadionDAO.php";//file path
            
            $objStadion= new StadionDAO($objDB);
            //setters POJO
            //$objStadion ->setStadionId($data[0]->stadion_id);
            $objStadion ->setIme($data[0]->ime);
            $objStadion ->setAdresa($data[0]->adresa);
            $objStadion ->setKapacitet($data[0]->kapacitet);
            //DAO
            $objStadion ->insertStadion();
    break;

    case "uprava":
        require_once "DAO/upravaDAO.php";//file path
            
            $objUprava = new UpravaDAO($objDB);
            //setters POJO
            $objUprava ->setDresId($data[0]->dres_id);
            $objUprava ->setZalaganje($data[0]->zalaganje);
            $objUprava ->setRabotnaOcenka($data[0]->rabotna_ocenka);
            //DAO
            $objUprava -> insertUprava();
    break;
    
    default :
    echo "Погрешно име на табела ";
    break;

}
?>