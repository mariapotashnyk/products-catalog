app.controller 'product', [ '$scope', '$stateParams', 'Product', ($scope, $stateParams, Product) ->

  Product.get(id: $stateParams.productId).then (product)->
    $scope.name = product.name
    $scope.description = product.description
    $scope.price = product.price
  ,(errorResponse) ->
    $scope.errorText = "Sorry, but an error occurred: #{errorResponse.statusText}"
]