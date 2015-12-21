app.factory 'Products', ['AppModel', (AppModel) ->

  class Products extends AppModel
    @configure url: (context) ->
      unless context.name?
        return "/products?page=#{context.page}&order=#{context.order}&direction=#{context.direction}"
      else
        return "/products/search/#{context.name}"
]