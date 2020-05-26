def bubble_sort(arr)
  i = 0
  k = 0
  flag = false

  while i < (arr.length - 1) do
    while k < (arr.length - 1 - i) do
      if arr[k] > arr[k+1]
        arr[k], arr[k+1] = arr[k+1], arr[k]
        flag = true
      end  
      k+=1
    end
    break if flag    
    i+=1   
  end
  arr
end


p bubble_sort([2,1,4,3,6,5])
