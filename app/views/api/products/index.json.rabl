node(:products) { partial('api/products/show.json', object: @products) }
node(:pagination) { @pagination }