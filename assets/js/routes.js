app.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "view/home.html",
	controller:"myCtrl"
  })
  .when("/main", {
    templateUrl : "view/home.html",
	controller:"myCtrl"
  })
  .when("/details_igrachi", {
    templateUrl : "view/details_igrachi.html",
	controller:"myCtrl"
  })
  .when("/details_income", {
    templateUrl : "view/details_income.html",
	controller:"myCtrl"
  })
  .when("/details_natprevaruvanje", {
    templateUrl : "view/details_natprevaruvanje.html",
	controller:"myCtrl"
  })
  .when("/details_outcome", {
    templateUrl : "view/details_outcome.html",
	controller:"myCtrl"
  })
  .when("/details_publika", {
    templateUrl : "view/details_publika.html",
	controller:"myCtrl"
  })
  .when("/details_sostav", {
    templateUrl : "view/details_sostav.html",
	controller:"myCtrl"
  })
  .when("/details_stadion", {
    templateUrl : "view/details_stadion.html",
	controller:"myCtrl"
  })
  .when("/details_uprava", {
    templateUrl : "view/details_uprava.html",
	controller:"myCtrl"
  })
  .when("/igrachi", {
    templateUrl : "view/igrachi.html",
	controller:"myCtrl"
  })
  .when("/income", {
    templateUrl : "view/income.html",
	controller:"myCtrl"
  })
  .when("/natprevaruvanje", {
    templateUrl : "view/natprevaruvanje.html",
	controller:"myCtrl"
  })
  .when("/outcome", {
    templateUrl : "view/outcome.html",
	controller:"myCtrl"
  })
  .when("/publika", {
    templateUrl : "view/publika.html",
	controller:"myCtrl"
  })
  .when("/sostav", {
    templateUrl : "view/sostav.html",
	controller:"myCtrl"
  })
  .when("/stadion", {
    templateUrl : "view/stadion.html",
	controller:"myCtrl"
  })
  .when("/uprava", {
    templateUrl : "view/uprava.html",
	controller:"myCtrl"
  })
});