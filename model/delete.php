<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

//delete

$data = json_decode(file_get_contents("php://input"));
var_dump($data);

require_once "../lib/class_database.php";
//           class name    __construct
$objDB = new   DB            ();

//za koja tabela se raboti
#$table_name="natprevaruvanje";

$table_name=$data[0]->table_name;
$pk_value=$data[0]->pk_value;

switch($table_name)
{
    case "igrachi":
        require_once "DAO/igrachiDAO.php";//file path 
        $objIgrachi = new IgrachiDAO($objDB);
        //setters POJO
        $objIgrachi->setDresId($data[0]->pk_value);
        //DAO
        $objIgrachi ->deleteIgrachi();

    break;

    case "income":
        require_once "DAO/incomeDAO.php";//file path
      
        $objIncome = new IncomeDAO($objDB);
        //setters POJO
        $objIncome->setIncomeId($data[0]->pk_value);
        //DAO
        $objIncome ->deleteIncome();
    break;

    case "natprevaruvanje":
        require_once "DAO/natprevaruvanjeDAO.php";//file path
        
        $objNatprevaruvanje = new NatprevaruvanjeDAO($objDB);
        //setters POJO
        $objNatprevaruvanje ->setKoloId($data[0]->pk_value);
        //DAO
        $objNatprevaruvanje -> deleteNatprevaruvanje();
    break;

    case "outcome":
        require_once "DAO/outcomeDAO.php";//file path
       
        $objOutcome = new OutcomeDAO($objDB);
         //setters POJO
         $objOutcome ->setOutcomeId($data[0]->pk_value);
         //DAO
        $objOutcome ->deleteOutcome();
    break;

    case "publika":
        require_once "DAO/publikaDAO.php";//file path
        
        $objPublika = new PublikaDAO($objDB);

        //setters POJO
        $objPublika ->setDatumId($data[0]->pk_value);
        //DAO
        $objPublika ->deletePublika();
    break;

    case "sostav":
        require_once "DAO/sostavDAO.php";//file path
            
            $objSostav = new SostavDAO($objDB);
            //setters POJO
            $objSostav ->setSostavId($data[0]->pk_value);
            //DAO
            $objSostav ->deleteSostav();

    break;

    case "stadion":
        require_once "DAO/stadionDAO.php";//file path
            
            $objStadion= new StadionDAO($objDB);
            //setters POJO
            $objStadion ->setStadionId($data[0]->pk_value);
            //DAO
            $objStadion ->deleteStadion();
    break;

    case "uprava":
        require_once "DAO/upravaDAO.php";//file path
            
            $objUprava = new UpravaDAO($objDB);
            //setters POJO
            $objUprava ->setDresId($data[0]->pk_value);
            //DAO
            $objUprava -> deleteUprava();
    break;
    
    default :
    echo "Погрешно име на табела ";
    break;

}
?>