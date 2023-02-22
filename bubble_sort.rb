def bubble_sort(array)
    for i in 0..array.length - 1
        array.each_index do |i|
            break if array[i+1] == nil
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([89, 78, 45, 22, 12, 1])