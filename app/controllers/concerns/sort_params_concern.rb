module SortParamsConcern

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
