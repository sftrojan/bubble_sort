my_array = [4,3,78,2,0,2]

def bubble_sort(my_array)
	n = my_array.length
	(n-1).times do
		my_array.each_index do |i|
	  		if i < n-1 && my_array[i] > my_array[i+1] 
	  			my_array[i], my_array[i+1] = my_array[i+1], my_array[i]
	  		end 
 	  	end
	end 
	my_array
end 

puts bubble_sort(my_array)



def bubble_sort_by(my_array)
	n = my_array.length
	(n-1).times do
		my_array.each_index do |i|
	  		if i < n-1 && (yield(my_array[i], my_array[i+1])<0)
	  			my_array[i], my_array[i+1] = my_array[i+1], my_array[i]

	  		end 
 	  	end
 	end 
 	my_array
end 

puts bubble_sort_by(["cheese", "sauce", "feta", "dog", "fourthousand"]) {
 |left, right|right.length - left.length }.to_s


