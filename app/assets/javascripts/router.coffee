app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider
    .state 'public',
      abstract: true,
      url: '',
      templateUrl: 'layouts/index.html',
      controller: 'layout',

    .state 'public.catalog',
      url: '/',
      views:
        'catalog@public':
          templateUrl: 'views/catalog.html',
          controller: 'catalog',
      sticky: true,
      dsr: true

    .state 'public.product',
      url: '/:productId',
      views:
        'product@public':
          templateUrl: 'views/product.html',
          controller: 'product'

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true
])
