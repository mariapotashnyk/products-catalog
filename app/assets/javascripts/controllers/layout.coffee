app.controller 'layout', [ '$scope', 'Slug', 'Products',  ($scope, Slug, Products) ->

  $scope.showSearchResults = false

  $scope.search = (searchQuery) ->
    $scope.searchQuery = searchQuery
    if searchQuery.length > 0
      $scope.getProducts = ->
      Products.get(name: searchQuery).then (response)->
        $scope.searchResults = response.products
        $scope.showSearchResults = true
      ,(errorResponse) ->
        console.log errorResponse.statusText
    else
      $scope.showSearchResults = false

  $scope.slugify = (id, name) -> Slug.slugify("#{id}-#{name}")
]