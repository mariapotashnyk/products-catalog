window.app = angular.module('ProductsCatalog', [
  'ui.router',
  'ct.ui.router.extras.sticky',
  'templates',
  'rails',
  'appResource',
  'ui.bootstrap',
  'slugifier'
]).run [ '$rootScope', '$state', ($rootScope, $state) ->
  $rootScope.$state = $state
]
