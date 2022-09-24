<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Person
{
	//attributes class
	private $polnoletstvo=18;
	private $penzijaMaz=64;
	private $penzijaZena=62;
	
	//constructor
	//getters,setters,methods
	public function gradinka ($godini){
		if($godini<7){
			echo "Можи да се запиши во градинка, затоа што има $godini години";
		}
		else{
			echo "Неможи да се запиши во градинка, затоа што има $godini години";
		}
	}
	public function osnovno ($godini){
		if (($godini > 6 && $godini < 14)){
			echo "Можи да се запиши во осново образование, затоа што има $godini години";
		}
		else{
			echo "Неможи да се запиши во основно образование, затоа што има $godini години";
		}
	}
	public function sredno ($godini){
		if (($godini > 14 && $godini < 18)){
			echo "Можи да се запиши во средно образование,затоа што има $godini години";
		}
		else{
			echo "Неможи да се запиши во средно образование, затоа што има $godini години";
		}
	}
	public function visokoObrazovanie ($godini){
		if ($godini >= 18){
			echo "Можи да се запиши во високо образование, затоа што е полнолетен/а и има $godini години";
		}
		else{
			echo "Неможи да се запиши во високо образование, затоа што е малолетен/а и има $godini години";
		}
		}
		function isAdult ($age){
		if($age>=$this->polnoletstvo)
		{
		echo "Полнолетен";
		}
		else
		{	
		echo "Малолетен";
		}
	}
	/*
	public function penzijaMashko ($godini)
		{
			$Maz=$this->penzijaMaz - $godini;
			echo "На лицето му преостануваат преостануваат=$Maz години до пензија";
		}
	public function penzijaZensko($godini)
		{
			$Zena=$this->penzijaZena - $godini;
			echo "На лицето му преостануваат преостануваат=$Zena години до пензија";
		}
	*/	
	public function isPenzioner($godini,$pol){
		 if($this->penzijaMaz>$godini)
		{
			switch($pol)
			{	
				case "maski":
					$doPenzija=64-$godini;
					echo "Ви преостануваат $doPenzija години до пензија.";
				break;
				case "zenski":
					$doPenzija=$this->penzijaZena-$godini;
					echo "Ви преостануваат $doPenzija години до пензија.";
				break;
				default:
					echo "Внесивте погрешен пол!";
				break;
			}
		}
		else {
			echo "Вие веќе сте пензионер";
		}
	}
}
?>