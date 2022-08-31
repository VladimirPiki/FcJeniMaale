<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

//update

require_once "../lib/class_database.php";
//           class name    __construct
$objDB = new   DB            ();

//za koja tabela se raboti
$table_name="uprava";

switch($table_name)
{
    case "igrachi":
        require_once "DAO/igrachiDAO.php";//file path 
        $objIgrachi = new IgrachiDAO($objDB);
        //setters POJO
        $objIgrachi->setDresId(71);
        $objIgrachi->setIme("Kiro");
        $objIgrachi->setPrezime("Gligorov");
        $objIgrachi->setPozicija("Center Back");
        $objIgrachi->setGodini(1996);
        $objIgrachi->setPlataDenari(143000);
        $objIgrachi->setIncomeId(70);
        //DAO
        $objIgrachi ->updateIgrachi();

    break;

    case "income":
        require_once "DAO/incomeDAO.php";//file path
      
        $objIncome = new IncomeDAO($objDB);
        //setters POJO
        $objIncome->setIncomeId(70);
        $objIncome->setIme('Cristiano');
        $objIncome->setPrezime('Mitevski');
        $objIncome->setPozicija('Right Forward');
        $objIncome->setGodini(1993);
        $objIncome->setKlub('Fc Partizan');
        $objIncome->setIznosDenari(997000);
        //DAO
        $objIncome ->updateIncome();
    break;

    case "natprevaruvanje":
        require_once "DAO/natprevaruvanjeDAO.php";//file path
        
        $objNatprevaruvanje = new NatprevaruvanjeDAO($objDB);
        //setters POJO
        $objNatprevaruvanje ->setKoloId(22);
        $objNatprevaruvanje ->setDatum('2023-02-01 13:00:00');
        $objNatprevaruvanje ->setProtivnik('Fc Old Boys');
        $objNatprevaruvanje ->setRezultat('L-3:1');
        $objNatprevaruvanje ->setMesto('Tumbe kafe');
        $objNatprevaruvanje ->setSostavId(1);
        $objNatprevaruvanje ->setStadionId(1);
        $objNatprevaruvanje ->setDatumId('2023-02-01');
        //DAO
        $objNatprevaruvanje -> updateNatprevaruvanje();
    break;

    case "outcome":
        require_once "DAO/outcomeDAO.php";//file path
       
        $objOutcome = new OutcomeDAO($objDB);
         //setters POJO
         $objOutcome ->setOutcomeId(5);
         $objOutcome ->setKlub('Fc Valladolid');
         $objOutcome ->setIznosDenari(823000);
         $objOutcome ->setDresId(18);
         //DAO
        $objOutcome ->updateOutcome();
    break;

    case "publika":
        require_once "DAO/publikaDAO.php";//file path
        
        $objPublika = new PublikaDAO($objDB);

        //setters POJO
        $objPublika ->setDatumId('2023-02-01');
        $objPublika ->setDomashna(3900);
        $objPublika ->setGostinska(334);
        $objPublika ->setKartiRasprodadeni(3078);

        //DAO
        $objPublika ->updatePublika();
    break;

    case "sostav":
        require_once "DAO/sostavDAO.php";//file path
            
            $objSostav = new SostavDAO($objDB);
            //setters POJO
            $objSostav ->setSostavId(22);
            $objSostav ->setDatumSostav('2023-02-01 13:00:00');
            $objSostav ->setCoach(27);
            $objSostav ->setGoalkeeper(12);
            $objSostav ->setCentreBack1(22);
            $objSostav ->setCentreBack2(14);
            $objSostav ->setRightBack(15);
            $objSostav ->setLeftBack(13);
            $objSostav ->setDefensiveMidfielder(6);
            $objSostav ->setCenterMidfielder(7);
            $objSostav ->setAttackingMidfielder(8);
            $objSostav ->setRightForward(11);
            $objSostav ->setLeftForward(10);
            $objSostav ->setCenterForward(21);
            $objSostav ->setReserve1(1);
            $objSostav ->setReserve2(5);
            $objSostav ->setReserve3(4);
            $objSostav ->setReserve4(17);
            $objSostav ->setReserve5(20);
            $objSostav ->setReserve6(9);
            $objSostav ->setReserve7(23);
            //DAO
            $objSostav ->updateSostav();

    break;

    case "stadion":
        require_once "DAO/stadionDAO.php";//file path
            
            $objStadion= new StadionDAO($objDB);
            //setters POJO
            $objStadion ->setStadionId(6);
            $objStadion ->setIme('FFM');
            $objStadion ->setAdresa('Kiril i Metodij bb');
            $objStadion ->setKapacitet(295);
            //DAO
            $objStadion ->updateStadion();
    break;

    case "uprava":
        require_once "DAO/upravaDAO.php";//file path
            
            $objUprava = new UpravaDAO($objDB);
            //setters POJO
            $objUprava ->setDresId(33);
            $objUprava ->setZalaganje('nedovolno');
            $objUprava ->setRabotnaOcenka(1);
            //DAO
            $objUprava -> updateUprava();
    break;
    
    default :
    echo "Погрешно име на табела ";
    break;

}
?>