# Zero Matrix: Write an algorithm such that if an
# element in an MxN matrix is 0, its entire row
# and column are set to 0.

# brute force solution
# record the row and column where 0 was found.
# iterate through the positions and reassign 0.
# it would take O(mn) + O(mn) + O(mn^2) total
# which would be O(m(n^2)) time.

def zero_matrix (matrix)
  zero_rows = []
  zero_columns = []

  matrix.each.with_index do |row, i| #mn
    row.each.with_index do |column, j|
      if column == 0
        zero_rows.push(i) unless zero_rows.include?(i)
        zero_columns.push(j) unless zero_columns.include?(j)
      end
    end
  end

  zero_rows.each do |i| #worst case m
    matrix[i].each.with_index do |column, j| #n
      matrix[i][j] = 0
    end
  end

  zero_columns.each do |num| #worst case n
    matrix.each.with_index do |row, i| #m
      row.each.with_index do |column, j| #n
        matrix[i][j] = 0 if j == num
      end
    end
  end

  matrix
end

grid = [
  [1,2,3,4],
  [4,0,6,7],
  [0,8,9,1],
  [3,4,5,6]
]

p zero_matrix(grid)

#time complexity is O(n*m)
def zero_matrix2 (matrix)
  matrix2 = matrix.dup
  zero_rows = []
  zero_columns = []

  matrix2.each.with_index do |row, i| #mn
    row.each.with_index do |column, j|
      if column == 0
        zero_rows.push(i) unless zero_rows.include?(i)
        zero_columns.push(j) unless zero_columns.include?(j)
      end
    end
  end

 matrix2.each_with_index do |array, idx2|
   array.each_index do |idx|
      array[idx] = 0 if zero_columns.include?(idx) || zero_rows.include?(idx2)
   end
 end
  matrix2
end

grid = [
  [1,2,3,4],
  [4,0,6,7],
  [0,8,9,1],
  [3,4,5,6]
]

p zero_matrix2(grid) == [[0, 0, 3, 4], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 5, 6]]