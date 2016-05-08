def translate_word word
	vowels = ['a','e','i','o','u']
	# if word beings with vowel, add an ay
	if vowels.include? word[0]
		word + "ay"	
	# else move constonants to end of ward and ad dan ay
	else
		first_vowel_index = 0
		contains_qu = false
		# find first_vowel_index
		while 
			first_vowel_index < word.length
			if vowels.include? word[first_vowel_index]
				# looking for qu phoneme
				if first_vowel_index > 0 && word[first_vowel_index-1..first_vowel_index] == "qu"
					contains_qu = true
				end
				break
			else
				first_vowel_index += 1
			end
		end
		if contains_qu
			word[first_vowel_index+1..-1] + word[0..first_vowel_index] + "ay"
		else
			word[first_vowel_index..-1] + word[0..first_vowel_index-1] + "ay"
		end
	end
end

def translate words
	reply = ""
	words.split.each do |word|
		reply += translate_word(word) + " "
	end
	reply.strip
end
