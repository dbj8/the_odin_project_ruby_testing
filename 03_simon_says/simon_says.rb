def echo word
	word
end

def shout word
	word.upcase
end

#def repeat word
#	"#{word} #{word}"
#end

def repeat(word, times = 2)
	if times == 0
		""
	else
		answer = word
		while times > 1
			answer += " #{word}" 
			times -= 1
		end
		answer
	end
end

def start_of_word word, num_letters
	word[0..num_letters-1]
end

def first_word words
	words.split[0]
end

def titleize sentence
	reply = ""
	words = sentence.split
	little_words = ['the','over', 'and'] 

	words.each do |word|
		# if you have a little word, do not capitalize, add to reply
		if little_words.include?(word)
			reply += "#{word} "
		# otherwise, capitalize, add to reply
		else
			reply += word[0..0].upcase+word[1..-1] + " "
		end
	end
	
	#capitalize first word regardless
	# the last argument is -2 to cut off the last space
	reply = reply[0..0].upcase+reply[1..-2]

end