object @product
attributes :id, :name, :description
node(:price) { |product| product.price.to_f }