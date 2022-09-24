<?php

/**
 * @author Vladimir Krstevski <vlade.piki23@hotmail.com>
 * @link https://www.linkedin.com/in/vladimir-krstevski-6182aa24b/
 */

class Physics
{
	//attributes class
	private $kelvin=273.15;

	//constructor

	//getters,setters,methods
	public function celsiusVoKelvin ($C)
	{
	$C=$C+$this->kelvin;
	echo"C=273.15K=$C K";
	}

	/**
	 * @param mixed $F
	 * 
	 * @return [type]
	 */
	public function fahrenheitVoCelsius($F)
	{
	$F=($F-32)*5/9;
	echo "F=$F C";
	}

	/**
	 * @param mixed $C
	 * 
	 * @return [type]
	 */
	public function celsiusVoFahrenheit ($C)
	{
		$C=$C*(9/5)+32;
		echo "C=$C F";
	}

	/**
	 * @param mixed $F
	 * 
	 * @return [type]
	 */
	public function fahrenheitVoKelvin ($F)
	{
		$F=($F + 459.67)* 5/9;
		echo "F= $F K";
	}

	/**
	 * @param mixed $K
	 * 
	 * @return [type]
	 */
	public function kelvinVoFahrenheit ($K)
	{
		$K=$K * 9/5 - 459.67;
		echo "K= $K F";
	}
	
		/**
		 * @param mixed $K
		 * 
		 * @return [type]
		 */
		public function kelvinVoCelsius ($K)
	{
		$K=$K-$this->kelvin;
		echo "K= $K C";
	}
}
?>