# We want this method to sort through an array and rearrange/swap numbers/elements if they are out of order

# array = [3,2,6,1,7,3,4]
# [2,3,6,1,7,3,4]
# [2,3,1,6,7,3,4]
# [2,3,1,6,3,7,4]
# [2,3,1,6,3,4,7]

def bubble_sort(array)
	n = array.length
	loop do 
		swapped = false 
		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end

	array 
end