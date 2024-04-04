def substrings(word, dict)
	word = word.downcase
	result = {}
	dict.each {|key| (
		count = word.scan(key).length
		if count > 0
			result[key] = count
		end)}
	result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)