def bubble_sort(arr)
  i = 0
  k = 0
  flag = false

  while i < (arr.length - 1)
    while k < (arr.length - 1 - i)
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        flag = true
      end
      k += 1
    end
    break if flag == false

    i += 1
  end
  arr
end

def bubble_sort_by(arr)
  i = 0
  k = 0

  while i < (arr.length - 1)

    flag = false

    while k < (arr.length - 1 - i)

      if yield(arr[k], arr[k + 1]).positive?
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        flag = true
      end
      k += 1
    end
    i += 1
    break if flag == false
  end
  arr
end
