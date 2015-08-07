app.factory 'Product', ['AppModel', (AppModel) ->

  class Product extends AppModel
    @configure url: '/products/{{id}}', name: 'product'
]