# copyright
class Product < ActiveRecord::Base

  extend SortParamsConcern

  PRODUCTS_PER_PAGE = 20

  def self.get(page = 1, order, direction)
    order(sort_params(order, direction)).page(page).per(PRODUCTS_PER_PAGE)
  end

  def self.search(name = '')
    where('name iLIKE ?', "%#{name}%").limit(5)
  end

end
