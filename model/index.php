<?php
require_once "../lib/class_person.php";
$edukacija=new Person();

require_once "../lib/class_mathematics.php";
$gjorgi_sugarev_5odd = new Mathematics(3.14);
$gjorgi_sugarev_8odd = new Mathematics(3.1415);
//$gjorgi_sugarev ->pi=13.1415;         //public pi-class attributt
//$gjorgi_sugarev -> setPi(13.1415);    //private pi-class attributt

require_once "../lib/class_physics.php";
$srednoObrazovanie = new Physics();
//$edukacija->gradinka(4);

echo "<h3>Учам PHP час 13</h3>";
//inicijalizacija//

//Вежби што ги правиме на часот
$age=10 ;
$ageVladimir=24;
$edukacija->isAdult($ageVladimir);
echo"<br>";
$ageDarko=10;
$edukacija->isAdult($ageDarko);
echo "<br>";
echo "Vladimir ima <b>".$ageVladimir."</b> godini";
echo"<br>";

$gjorgi_sugarev_5odd -> pravoagolnik(4,2);
echo"<br>";
$gjorgi_sugarev_8odd -> pravoagolnik(4,2);

//Овие се вежби од домашно 
echo "<h3>Вежби за час 13</h3>";

//1 прашање-Пресметај П на квадрат//
echo "<b>1. Прашање-Пресметај П на квадрат за 5то и 8мо одделение?</b>";
echo"<br>";
$gjorgi_sugarev_5odd -> pNaKvadrat(2,2);
echo"<br>";
$gjorgi_sugarev_8odd -> pNaKvadrat(2,2);

// 2 прашање Пресметај П на кружница//
echo"<br>";
echo "<b>2. Прашање-Пресметај П на кружница за 5то и 8мо одделение?</b>";
echo"<br>";
$gjorgi_sugarev_5odd -> pNaKruznica(5);
echo"<br>";
$gjorgi_sugarev_8odd -> pNaKruznica(5);

//3 прашање Конвертирај целзиус во келвин//
echo"<br>";
echo "<b>3. Прашање-Конвертор целзиус во келвин.</b>";
echo"<br>";
$srednoObrazovanie -> celsiusVoKelvin(-40);

//4 прашање Упис во градинка//
echo"<br>";
echo "<b>4. Упис во градинка.</b>";
echo"<br>";
$edukacija->gradinka(10);

//5 прашање Упис во основно образование //
echo"<br>";
echo "<b>5. Упис во основно образование.</b>";
echo"<br>";
$edukacija->osnovno(7);

//6 прашање Упис во средно образование//
echo"<br>";
echo "<b>6. Упис во средно образование.</b>";
echo"<br>";
$edukacija->sredno(18);

//7 прашање Упис во високо образование//
echo"<br>";
echo "<b>7. Упис во високо образование.</b>";
echo"<br>";
$edukacija->visokoObrazovanie(17);

//Овие се вежби од домашно 
echo "<h3>Вежби за час 14</h3>";

//1 прашање Конвертирај фаренхајт во целзиус
echo "<b>1-Конвертор фаренхајт во целзиус.</b>";
echo"<br>";
$srednoObrazovanie -> fahrenheitVoCelsius(-3);

// 2 прашање Конвертирај целзиус во фаренхајт
echo"<br>";
echo "<b>2-Конвертор целзиус во фаренхајт.</b>";
echo"<br>";
$srednoObrazovanie -> celsiusVoFahrenheit (-10);

//3 прашање Конвертирај фаренхајт во келвин
echo"<br>";
echo "<b>3-Конвертор фаренхајт во келвин.</b>";
echo"<br>";
$srednoObrazovanie -> fahrenheitVoKelvin (-10);

//4 прашање Конвертирај келвин во фаренхајт
echo"<br>";
echo "<b>4-Конвертор келвин во фаренхајт.</b>";
echo"<br>";
$srednoObrazovanie -> kelvinVoFahrenheit (-13);

//5 прашање Конвертирај келвин во целзиус
echo"<br>";
echo "<b>5-Конвертор келвин во целзиус.</b>";
echo"<br>";
$srednoObrazovanie -> kelvinVoCelsius(13);

//6 прашање Уште колку години преостануваат за пензија машки род.
echo"<br>";
echo "<b>6-Уште колку години преостануваат за пензија машки род.</b>";
echo"<br>";
$edukacija -> isPenzioner(89,"maski");

//7  прашање Уште колку години преостануваат за пензија женски род.
echo"<br>";
echo "<b>7-Уште колку години преостануваат за пензија женски род.</b>";
echo"<br>";
$edukacija -> isPenzioner (55,"zenski");

?>