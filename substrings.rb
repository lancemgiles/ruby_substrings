def substrings(word, dict)
	word = word.downcase
	#cycle through dict to find matches
	#keep count of each match
	#for each element of the dictionary,
	#check if word is equal
	#if so, pass that word to an array
	#if not, skip it
	#count how many times the word is in the array
	#create a hash with the word as the key and number of
	#occurances as the value
	matches = []
	result = {}
	dict.each {|key| (
		count = 0
		if key == word then
			count += 1
			matches.push(key)
			result[key] = count
		else
			count = 0
		end)}
	result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)