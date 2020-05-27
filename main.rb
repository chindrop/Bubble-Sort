def bubble_sort(arr)
  i = 0
  p "size is : " + arr.size.to_s
  while i < (arr.size - 1)
    k = 0
    flag = false
    while k < (arr.size - i - 1)
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        flag = true
      end
      k += 1
    end
    break unless flag

    i += 1
  end
  arr
end

def bubble_sort_by(arr)
  i = 0

  while i < (arr.size - 1)
    k = 0
    flag = false

    while k < (arr.size - i - 1)

      if yield(arr[k], arr[k + 1]).positive?
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        flag = true
      end
      k += 1
    end
    i += 1
    break unless flag
  end
  arr
end
