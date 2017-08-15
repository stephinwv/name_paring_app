
def pair(names)
	array = []
	#Creates an empty array to hold objects later called
	array_paired_names = names.shuffle.each_slice(2)
	#Shuffles the names to create random picks, 
	#takes the results and slices out 2, 
	#puts them in an array of (2)
	#creating the pairs

	array_paired_names.each do |pair|
		#interates over each element in the array of names
		if pair.length == 2
			array << pair
			#if the number of names is 2, print the pair
		else
			(array.last << pair).flatten!
			#if there is a remainder, pushes the last array(of one)
			#into the last returned pair, .flatten! changes it to part of the string
		end

	
	end
	array.map!{ |name1,name2,name3| "#{name1} " "#{name2} " "#{name3}"}.join"<br>"
	#map is kind of like each, runs through a block for each element. map! changes the original array.It "maps" a function to each item into an array.

end
