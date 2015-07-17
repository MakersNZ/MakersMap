app.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "home.html"
        controller: 'HomeController'
      )
])
