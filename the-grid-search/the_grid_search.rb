class TheGridSearch

  attr_accessor :grid, :search_for

  def found?
    first_searched_cell = search_for.first.first

    vertical_size = grid.size
    horizontal_size = grid.first.size

    vertical_threshold = vertical_size - search_for.size
    horizontal_threshold = horizontal_size - search_for.first.size

    grid.each_with_index do |grid_row, row_index|
      break if row_index > vertical_threshold
      grid_row.each_with_index do |grid_cell, column_index|
        break if column_index > horizontal_threshold
        if grid_cell == first_searched_cell
          return 'YES' if evaluate_potential_match(row_index, column_index)
        end
      end
    end


    'NO'
  end

  def evaluate_potential_match(row_index, column_index)
    search_for.each_with_index do |searched_row, searched_row_index|
      searched_row.each_with_index do |searched_cell, searched_cell_index|
        return false if searched_cell != grid[row_index + searched_row_index][column_index + searched_cell_index]
      end
    end

    true
  end

end