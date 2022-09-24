<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Mathematics
{
	//attributes class
	private $pi=3.14;
	//constructor
	public function __construct($myPi)
	{
		$this->pi=$myPi;
	}
	//getters,setters,
	public function setPi($myPi){
		$this->pi=$myPi;
	}
	//methods
	public function pravoagolnik($a,$b)
	{
	$P=$a*$b;
	echo "P=a*b=$P";
	}
	public function pNaKvadrat($a)
	{
	$P=$a*$a;
	echo "P=a^2=$P";
	}
	public function pNaKruznica($R)
	{
	$P=$R*$R*$this->pi;
	echo "P=R*R*pi=$R*$R*$this->pi=$P";
	}
}
?>