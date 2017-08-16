# We want this method to sort through an array and rearrange/swap numbers/elements if they are out of order


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

array = ["louie","cesar","compadre","nancy","kanye"]
bubble_sort(array)
