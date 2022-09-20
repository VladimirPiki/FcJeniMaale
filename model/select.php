<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link 
 */

    //select

    require_once "../lib/class_database.php";
    //           class name    __construct
    $objDB = new   DB            ();


    //za koja tabela se raboti
    $table_name=$_GET['table_name'];
    $data=[];

    switch($table_name)
    {
        case "igrachi":
        require_once "DAO/igrachiDAO.php";//file path
            
            $objIgrachi = new IgrachiDAO($objDB);
            
            $results=$objIgrachi ->selectIgrachi();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "dres_id" => $row["dres_id"],
                "ime" => $row["ime"],
                "prezime" => $row["prezime"],
                "pozicija" => $row["pozicija"],
                "godini" => $row["godini"],
                "plata_denari" => $row["plata_denari"],
                "income_id" => $row["income_id"],
                "ime" => $row["ime"],
                "prezime" => $row["prezime"],
                "pozicija" => $row["pozicija"],
                "godini" => $row["godini"],
                "klub" => $row["klub"],
                "iznos_denari" => $row["iznos_denari"],
                "ime_income" => $row["ime_income"],
                "prezime_income" => $row["prezime_income"],
                "pozicija_income" => $row["pozicija_income"],
                "godini_income" => $row["godini_income"],
                "ime_igrachi" => $row["ime_igrachi"],
                "prezime_igrachi" => $row["prezime_igrachi"],
                "pozicija_igrachi" => $row["pozicija_igrachi"],
                "godini_igrachi" => $row ["godini_igrachi"],
                "igrachi_img_path" => $row ["igrachi_img_path"]
            );
            }

        break;

        case "income":
        require_once "DAO/incomeDAO.php";//file path
            
            $objIncome = new IncomeDAO($objDB);

            $results=$objIncome ->selectIncome();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "income_id" => $row["income_id"],
                "ime" => $row["ime"],
                "prezime" => $row["prezime"],
                "pozicija" => $row["pozicija"],
                "godini" => $row["godini"],
                "klub" => $row["klub"],
                "iznos_denari" => $row["iznos_denari"],
                "income_img_path" => $row["income_img_path"]  
            );
            }

        break;

        case "natprevaruvanje":
        require_once "DAO/natprevaruvanjeDAO.php";//file path
            
            $objNatprevaruvanje = new NatprevaruvanjeDAO($objDB);

            $results=$objNatprevaruvanje -> selectNatprevaruvanje();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "kolo_id" => $row["kolo_id"],
                "datum" => $row["datum"],
                "protivnik" => $row["protivnik"],
                "rezultat" => $row["rezultat"],
                "mesto" => $row["mesto"],
                "sostav_id" => $row["sostav_id"],
                "sostav_id" => $row["sostav_id"],
                "datum_sostav" => $row["datum_sostav"],
                "coach" => $row["coach"],
                "goalkeeper" => $row["goalkeeper"],
                "centre_back1" => $row["centre_back1"],
                "centre_back2" => $row["centre_back2"],
                "right_back" => $row["right_back"],
                "left_back" => $row["left_back"],
                "defensive_midfielder" => $row["defensive_midfielder"],
                "center_midfielder" => $row["center_midfielder"],
                "attacking_midfielder" => $row["attacking_midfielder"],
                "right_forward" => $row["right_forward"],
                "left_forward" => $row["left_forward"],
                "center_forward" => $row["center_forward"],
                "reserve1" => $row["reserve1"],
                "reserve2" => $row["reserve2"],
                "reserve3" => $row["reserve3"],
                "reserve4" => $row["reserve4"],
                "reserve5" => $row["reserve5"],
                "reserve6" => $row["reserve6"],
                "reserve7" => $row["reserve7"],
                "stadion_id" => $row["stadion_id"],
                "ime" => $row["ime"],
                "adresa" => $row["adresa"],
                "kapacitet" => $row["kapacitet"],
                "datum_id" => $row["datum_id"],
                "domashna" => $row["domashna"],
                "gostinska" => $row["gostinska"],
                "karti_rasprodadeni" => $row["karti_rasprodadeni"]
            );
            }
        break;

        case "outcome":
        require_once "DAO/outcomeDAO.php";//file path
            
            $objOutcome = new OutcomeDAO($objDB);

            $results=$objOutcome ->selectOutcome();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "outcome_id" => $row["outcome_id"],
                "klub" => $row["klub"],
                "iznos_denari" => $row["iznos_denari"],
                "dres_id" => $row["dres_id"],
                "ime" => $row["ime"],
                "prezime" => $row["prezime"],
                "pozicija" => $row["pozicija"],
                "godini" => $row["godini"],
                "plata_denari" => $row["plata_denari"],
                "income_id" => $row["income_id"],
                "outcome_img_path" => $row["outcome_img_path"]
                );
            }

        break;

        case "publika":
        require_once "DAO/publikaDAO.php";//file path
            
            $objPublika = new PublikaDAO($objDB);

            $results=$objPublika ->selectPublika();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "datum_id" => $row["datum_id"],
                "domashna" => $row["domashna"],
                "gostinska" => $row["gostinska"],
                "karti_rasprodadeni" => $row["karti_rasprodadeni"]
            );
            }

        break;

        case "sostav":
        require_once "DAO/sostavDAO.php";//file path
                
            $objSostav = new SostavDAO($objDB);

            $results=$objSostav ->selectSostav();//DAO
    
            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "sostav_id" => $row["sostav_id"],
                "datum_sostav" => $row["datum_sostav"],
                "coach" => $row["coach"],
                "goalkeeper" => $row["goalkeeper"],
                "centre_back1" => $row["centre_back1"],
                "centre_back2" => $row["centre_back2"],
                "right_back" => $row["right_back"],
                "left_back" => $row["left_back"],
                "defensive_midfielder" => $row["defensive_midfielder"],
                "center_midfielder" => $row["center_midfielder"],
                "attacking_midfielder" => $row["attacking_midfielder"],
                "right_forward" => $row["right_forward"],
                "left_forward" => $row["left_forward"],
                "center_forward" => $row["center_forward"],
                "reserve1" => $row["reserve1"],
                "reserve2" => $row["reserve2"],
                "reserve3" => $row["reserve3"],
                "reserve4" => $row["reserve4"],
                "reserve5" => $row["reserve5"],
                "reserve6" => $row["reserve6"],
                "reserve7" => $row["reserve7"],
                "natprevar" => $row["natprevar"],
                "sostav_img_path" => $row["sostav_img_path"]
            );
            }

        break;
    
        case "stadion":
        require_once "DAO/stadionDAO.php";//file path
                
            $objStadion= new StadionDAO($objDB);

            $results=$objStadion ->selectStadion();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                "stadion_id" => $row["stadion_id"],
                "ime" => $row["ime"],
                "adresa" => $row["adresa"],
                "kapacitet" => $row["kapacitet"]
            );
            }
        break;
    
        case "uprava":
            require_once "DAO/upravaDAO.php";//file path
                
            $objUprava = new UpravaDAO($objDB);

            $results=$objUprava -> selectUprava();//DAO

            //var_dump($results);

            foreach($results as $row ){
                $data[]=array(
                    "dres_id" => $row["dres_id"],
                    "zalaganje" => $row["zalaganje"],
                    "rabotna_ocenka" => $row["rabotna_ocenka"]
            );
            }
        break;
        
        default :
        echo "Погрешно име на табела ";
        break;

    }

    echo json_encode($data);
?>