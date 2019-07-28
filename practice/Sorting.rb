module Sorting
    extend self
    # Bubble Sort
    def bubble_sort(arr)
        arr_length = arr.length

        0.upto(arr_length - 1).each do |i|
            0.upto( arr_length - 2).each do |j|
                if arr[j] > arr[j + 1]
                    arr[j],arr[j + 1] = arr[j + 1],arr[j]
                end
            end
        end

        return arr
    end

    # Selection Sort
    def selection_sort(arr)
        arr_length = arr.length

        0.upto(arr_length - 1).each do |i|
            min_index = i
            i.upto(arr_length - 1).each do |j|
                if arr[j] < arr[min_index]
                    min_index = j
                end
            end
            # swap
            arr[min_index], arr[i] = arr[i], arr[min_index]
        end
        return arr
    end

    # Insertion Sort 
    def insertion_sort(arr)
        arr_length = arr.length
        1.upto(arr_length - 1).each do |i|
            key = arr[i]
            j = i - 1
            while j >= 0 && key < arr[j]
                arr[j + 1] = arr[j]
                j = j - 1
            end
            arr[j + 1] = key
        end

        return arr
    end

    # Merge Sort
    def merge_sort(arr)
        return if arr.length <= 1
        mid = arr.length/2
        arr1 = arr[0..(mid - 1)]
        arr2 = arr[mid..-1]

        Sorting.merge_sort(arr1)
        Sorting.merge_sort(arr2)

        i = 0
        j = 0

        0.upto(arr1.length + arr2.length - 1).each do |k|
            if i > (arr1.length - 1) 
                arr[k..(arr1.length + arr2.length - 1)] = arr2[j..-1]
                break
            elsif j > (arr2.length - 1)
                arr[k..(arr1.length + arr2.length - 1)] = arr1[i..-1]
                break
            elsif arr1[i] < arr2[j]
                arr[k] = arr1[i]
                i = i + 1
            elsif arr1[i] >= arr2[j]
                arr[k] = arr2[j]
                j = j + 1
            end
        end
        arr
    end
end


arr = [5,4,3,2,1]
puts "#{Sorting.bubble_sort(arr)}"
puts "#{Sorting.selection_sort(arr)}"
puts "#{Sorting.insertion_sort(arr)}"
puts "#{Sorting.merge_sort(arr)}"

