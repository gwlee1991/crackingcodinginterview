# 1.7 Rotate Matrix: Given an image represented by an
# NxN matrix, where each pixel in the image is 4 bytes,
# write a method to rotate the image by 90 degrees.
# Can you do this in place?


# time complicity O(n^2)
def rotate_matrix(matrix)
  arr = []
  matrix.length.times do |i|
    sub = []

    matrix.each do |array|
      sub << array[i]
    end

    arr << sub.reverse
  end
  arr
end

my_matrix = [
[[0,0], [0,1], [0,2], [0,3]],
[[1,0], [1,1], [1,2], [1,3]],
[[2,0], [2,1], [2,2], [2,3]],
[[3,0], [3,1], [3,2], [3,3]]
]


p rotate_matrix(my_matrix) == [
  [[3,0], [2,0], [1,0], [0,0]],
  [[3,1], [2,1], [1,1], [0,1]],
  [[3,2], [2,2], [1,2], [0,2]],
  [[3,3], [2,3], [1,3], [0,3]]
]

