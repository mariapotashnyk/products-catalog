app.controller 'catalog', [ '$scope', 'Slug', 'Products',  ($scope, Slug, Products) ->

# query params default values
  $scope.direction = 'cheap_first'
  $scope.order = 'price'
  $scope.currentPage = 1

  $scope.getProducts = ->
    Products.get(page: $scope.currentPage, order: $scope.order, direction: $scope.direction).then (response)->
      $scope.products = response.products;
      $scope.totalItems = response.pagination.totalCount
      $scope.currentPage = response.pagination.currentPage
      $scope.itemsPerPage = response.pagination.perPage
    ,(errorResponse) ->
      console.log(errorResponse)
      $scope.errorText = "Sorry, but an error occurred: #{errorResponse.statusText}"

  $scope.getProducts()

  $scope.setPage = (pageNo) -> $scope.currentPage = pageNo

  $scope.pageChanged = ->
    $scope.getProducts()

  $scope.sort = (order, direction) ->
    $scope.order = order
    $scope.direction = if $scope.direction == 'cheap_first' then 'expensive_first' else 'cheap_first'
    $scope.currentPage = 1
    $scope.getProducts()

  $scope.slugify = (id, name) -> Slug.slugify("#{id}-#{name}")
]