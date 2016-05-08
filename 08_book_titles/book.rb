class Book
	attr_writer :title

	def title_word word
		word[0].upcase + word[1..-1]
	end

	def title
		little_words = ["the","and", "in", "of", "a", "an"]

		words = @title.split

		capital_words = ""

		words.each_with_index do |word, index|
			if index == 0 || (not little_words.include?(word))
				capital_words += " #{title_word(word)}"
			# elsif not little_words.include?(word)
			#	capital_words += " #{title_word(word)}"
			else
				capital_words += " #{word}"				
			end 
		end

		capital_words.strip
	end
end