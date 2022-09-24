var app = angular.module('myApp', ["ngRoute"]);
app.controller('myCtrl', function($scope,$http,$filter) {
	$scope.error_alert=false;
  $scope.alert_success=false;
  $scope.datum = {
    value: new Date(2022, 11, 28, 14, 57)
  };
  $scope.datum_sostav = {
    value: new Date(2022, 12, 31, 23, 59)
  };
  $scope.datum_id = {
     value: new Date(2022, 11, 23)
  }

  var fullname="";
  $scope.firstName = "Vladimir";
  $scope.surname = "Doe";
  fullname=$scope.firstName+" "+$scope.surname;
  console.log("Hello");

  //JSON

 /* $scope.igrachi=
  [
    {"dres_id":1,"ime":"Mice","prezime":"Dimov","pozicija":"Goalkeeper","godini":1997,"plata_denari":100000.000000,"income_id":"NULL"},
    {"dres_id":2,"ime":"Blagojche","prezime":"Popovski","pozicija":"Centre Back","godini":1995,"plata_denari":64000.000000,"income_id":"NULL"},
    {"dres_id":3,"ime":"Andrej","prezime":"Nedelkovski","pozicija":"Left Back","godini":1990,"plata_denari":55000.000000,"income_id":"NULL"}
  ];*/

  $scope.igrachi=[];
  $http.get("model/select.php?table_name=igrachi").then(function(response) {
    $scope.igrachi = response.data;
  });

  /*$scope.income=
  [
    {"income_id":1,"ime":"Stojan","prezime":"Dimov","pozicija":"Center Forward","godini":1990,"klub":"Fc Poesevo","iznos_denari":67000.000000},
    {"income_id":2,"ime":"Trajan","prezime":"Rizovski","pozicija":"Left Back","godini":1995,"klub":"Fc Budimerci United","iznos_denari":100000.000000},
    {"income_id":3,"ime":"Mice","prezime":"Gacov","pozicija":"Right Back","godini":1998,"klub":"Fc Budimerci United","iznos_denari":150000.000000}
  ];*/

  $scope.income=[];
  $http.get("model/select.php?table_name=income").then(function(response) {
    $scope.income = response.data;
  });


 /* $scope.natprevaruvanje=
  [
    {"kolo_id":1,"datum":"2021-09-05 17:00:00","protivnik":"Fc Mladost","rezultat":"W-3:1","mesto":"Tumbe Kafe","sostav_id":1,"stadion_id":1,"datum_id":"2021-09-05"},
    {"kolo_id":2,"datum":"2021-09-12 17:00:00","protivnik":"Fc Pelagonija","rezultat":"W-0:1","mesto":"s.Dobromiri","sostav_id":2,"stadion_id":0,"datum_id":""},
    {"kolo_id":3,"datum":"2021-09-19 17:00:00","protivnik":"Fc KSK","rezultat":"D-0:0","mesto":"Tumbe Kafe","sostav_id":3,"stadion_id":1,"datum_id":"2021-09-19"}
  ];*/

  $scope.natprevaruvanje=[];
  $http.get("model/select.php?table_name=natprevaruvanje").then(function(response) {
    $scope.natprevaruvanje = response.data;
  });

  /*$scope.outcome=
  [
    {"outcome_id":1,"klub":"Fc Pelister Bitola","iznos_denari":100000.000000,"dres_id":16},
    {"outcome_id":2,"klub":"Fc Pelister Bitola","iznos_denari":167000.000000,"dres_id":20},
    {"outcome_id":3,"klub":"Fc Old Boys","iznos_denari":565000.000000,"dres_id":22}
  ];*/

  $scope.outcome=[];
  $http.get("model/select.php?table_name=outcome").then(function(response) {
    $scope.outcome = response.data;
  });

  /*$scope.publika=
  [
    {"datum_id":"2021-09-05","domashna":5900,"gostinska":124,"karti_rasprodadeni":5078},
    {"datum_id":"2021-09-19","domashna":1430,"gostinska":0,"karti_rasprodadeni":1400},
    {"datum_id":"2021-10-03","domashna":870,"gostinska":211,"karti_rasprodadeni":800}
  ];*/

  $scope.publika=[];
  $http.get("model/select.php?table_name=publika").then(function(response) {
    $scope.publika = response.data;
  });

 /* $scope.sostav=
  [
    {"sostav_id":1,"datum_sostav":"2021-09-05 17:00:00","coach":27,"goalkeeper":1,"centre_back1":2,"centre_back2":5,"right_back":4,"left_back":3,"defensive_midfielder":6,
    "center_midfielder":7,"attacking_midfielder":8,"right_forward":11,"left_forward":10,"center_forward":9,"reserve1":19,"reserve2":14,"reserve3":15,
    "reserve4":17,"reserve5":20,"reserve6":21,"reserve7":23
    },
    {"sostav_id":2,"datum_sostav":"2021-09-12 17:00:00","coach":27,"goalkeeper":1,"centre_back1":2,"centre_back2":5,"right_back":15,"left_back":3,
    "defensive_midfielder":6,"center_midfielder":7,"attacking_midfielder":8,"right_forward":11,"left_forward":10,"center_forward":9,
    "reserve1":19,"reserve2":14,"reserve3":4,"reserve4":17,"reserve5":20,"reserve6":21,"reserve7":23
    },
    {"sostav_id":3,"datum_sostav":"2021-09-19 16:00:00","coach":27,"goalkeeper":12,"centre_back1":2,"centre_back2":5,"right_back":4,"left_back":3,
    "defensive_midfielder":6,"center_midfielder":7,"attacking_midfielder":8,"right_forward":11,"left_forward":10,"center_forward":9,
    "reserve1":19,"reserve2":14,"reserve3":15,"reserve4":17,"reserve5":20,"reserve6":21,"reserve7":23
    }
  ];*/

  $scope.sostav=[];
  $http.get("model/select.php?table_name=sostav").then(function(response) {
    $scope.sostav = response.data;
  });

  /*$scope.stadion=
  [
    {"stadion_id":1,"ime":"Tumbe Kafe","adresa":"Ulica Tumbe kafe bb","kapacitet":7000},
    {"stadion_id":2,"ime":"Petar Miloshevski","adresa":"Ulica 16ta bb","kapacitet":7000},
    {"stadion_id":3,"ime":"Pavel Shatev","adresa":"Setaliste bb","kapacitet":7000}
  ];*/

  $scope.stadion=[];
  $http.get("model/select.php?table_name=stadion").then(function(response) {
    $scope.stadion = response.data;
  });
  
  /*$scope.uprava=
  [
    {"dres_id":1,"zalaganje":"dovolno","rabotna_ocenka":3},
    {"dres_id":2,"zalaganje":"istaknato","rabotna_ocenka":3},
    {"dres_id":3,"zalaganje":"istaknato","rabotna_ocenka":3}
  ];*/

  $scope.uprava=[];
  $http.get("model/select.php?table_name=uprava").then(function(response) {
    $scope.uprava = response.data;
  });

//Functions
  function postData(file,objData){
    //if(objData.lenght > 0){}
    $http({
      method : "POST",
      url : "model/"+file+".php",
      data: objData
    }).then(function mySuccess(_response) {
      //proverka na status 200, 201, 404, 500
      $scope.alert_success=true;
      $scope.error_alert=false;
    }, function myError(_response) {
      $scope.error_alert=true;
      $scope.alert_success=false;
    });
  }

  $scope.erorr=function(){
    $scope.error_alert=true;
    $scope.alert_success=false;
  }

  $scope.function_igrachi=function(dres_id,ime,prezime,pozicija,godini,plata_denari,income_id,igrachi_img_path)
  {
    var objIgrachi=[];
    objIgrachi.push({"dres_id":dres_id,"ime":ime,"prezime":prezime,"pozicija":pozicija,"godini":godini,"plata_denari":plata_denari,"income_id":income_id,"igrachi_img_path":igrachi_img_path,"table_name":"igrachi"});
    console.log(objIgrachi);
    postData("insert",objIgrachi);
  }

  $scope.function_income=function(ime,prezime,pozicija,godini,klub,iznos_denari,income_img_path)
  {
    var objIncome=[];
    objIncome.push({"ime":ime,"prezime":prezime,"pozicija":pozicija,"godini":godini,"klub":klub,"iznos_denari":iznos_denari,"income_img_path":income_img_path,"table_name":"income"});
    console.log(objIncome);
    postData("insert",objIncome);
  }

  $scope.function_natprevaruvanje=function(kolo_id,datum,protivnik,rezultat,mesto,sostav_id,stadion_id,datum_id)
  {
    var objNatprevaruvanje=[];
    objNatprevaruvanje.push({"kolo_id":kolo_id,"datum":datum,"protivnik":protivnik,"rezultat":rezultat,"mesto":mesto,"sostav_id":sostav_id,"stadion_id":stadion_id,"datum_id":datum_id,"table_name":"natprevaruvanje"});
    console.log(objNatprevaruvanje);
    postData("insert",objNatprevaruvanje);
  }

  $scope.function_outcome=function(klub,iznos_denari,dres_id,outcome_img_path)
  {
    var objOutcome=[];
    objOutcome.push({"klub":klub,"iznos_denari":iznos_denari,"dres_id":dres_id,"outcome_img_path":outcome_img_path,"table_name":"outcome"});
    console.log(objOutcome);
    postData("insert",objOutcome);
  }

  $scope.function_publika=function(datum_id,domashna,gostinska,karti_rasprodadeni)
  {
    var objPublika=[];
    objPublika.push({"datum_id":datum_id,"domashna":domashna,"gostinska":gostinska,"karti_rasprodadeni":karti_rasprodadeni,"table_name":"publika"});
    console.log(objPublika);
    postData("insert",objPublika);
  }

  $scope.function_sostav=function(sostav_id,datum_sostav,coach,goalkeeper,centre_back1,centre_back2,right_back,left_back,defensive_midfielder,center_midfielder,attacking_midfielder,right_forward,left_forward,center_forward,reserve1,reserve2,reserve3,reserve4,reserve5,reserve6,reserve7,sostav_img_path)
  {
    var objSostav=[];
    objSostav.push({"sostav_id":sostav_id,"datum_sostav":datum_sostav,"coach":coach,"goalkeeper":goalkeeper,"centre_back1":centre_back1,"centre_back2":centre_back2,"right_back":right_back,"left_back":left_back,"defensive_midfielder":defensive_midfielder,"center_midfielder":center_midfielder,"attacking_midfielder":attacking_midfielder,"right_forward":right_forward,"left_forward":left_forward,"center_forward":center_forward,"reserve1":reserve1,"reserve2":reserve2,"reserve3":reserve3,"reserve4":reserve4,"reserve5":reserve5,"reserve6":reserve6,"reserve7":reserve7,"sostav_img_path":sostav_img_path,"table_name":"sostav"});
    console.log(objSostav);
    postData("insert",objSostav);
  }

  $scope.function_stadion=function(ime,adresa,kapacitet)
  {
    var objStadion=[];
    objStadion.push({"ime":ime,"adresa":adresa,"kapacitet":kapacitet,"table_name":"stadion"});
    console.log(objStadion);
    postData("insert",objStadion);
  }

  $scope.function_uprava=function(dres_id,zalaganje,rabotna_ocenka)
  {
    //console.log("controller "+zalaganje +" "+rabotna_ocenka);
    var objUprava=[];
    objUprava.push({"dres_id":dres_id,"zalaganje":zalaganje,"rabotna_ocenka":rabotna_ocenka,"table_name":"uprava"});
    console.log(objUprava);
    postData("insert",objUprava);
  }

  ///Delete functions
  $scope.getIndex=0;
  $scope.passPosition=function(position) // position=3
  {
    console.log("position="+position);
    $scope.getIndex=position; // 3
  }
  
  $scope.deleteRow=function(table_name,pk_value)
  {
    var objDelete=[];
    objDelete.push({"table_name":table_name,"pk_value":pk_value});
    postData("delete",objDelete);
  }
});
