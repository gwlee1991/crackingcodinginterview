# arr elements are strings

def mergeSort(arr)
  return arr if arr.length <= 1

  mid = arr.length/2
  left = arr[0...mid]
  right = arr[mid..-1]
  merge(mergeSort(left), mergeSort(right))
end

def merge(left,right)
  merged = []
  until left.length == 0 || right.length == 0
    # need to add an additional condition for faster comparision. It is faster to find the length difference than comparing the actual values of two strings.
    if (left.first.length - right.first.length) > 0) || (left.first.to_i > right.first.to_i)
      merged.push(right.shift)
    else
      merged.push(left.shift)
    end
  end

  merged.concat(left.concat(right))
end

p mergeSort(["2","1","3"])