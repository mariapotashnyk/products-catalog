app.factory 'Products', ['AppModel', (AppModel) ->

  class Products extends AppModel
    @configure url: '/products?page={{page}}&order={{order}}&direction={{direction}}'
]