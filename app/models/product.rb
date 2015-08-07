class Product < ActiveRecord::Base

  PRODUCTS_PER_PAGE = 20

  def self.get_products(page = 1, order = :price, direction = 'cheap_first')
    order(sort_params(order, direction)).page(page).per(PRODUCTS_PER_PAGE)
  end

  class << self
    private
    def sort_params(order, direction)
      order = %w(price name).include?(order) ? order : 'price'
      direction = case direction
                    when 'expensive_first'
                      'DESC'
                    when 'cheap_first'
                      'ASC'
                    else 'ASC'
                  end
      { order => direction }
    end
  end

end
