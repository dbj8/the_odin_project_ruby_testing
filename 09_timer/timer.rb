class Timer
	attr_accessor :seconds

	def initialize seconds=0
		@seconds = seconds
	end

	def time_string
		seconds = sprintf("%.2d", @seconds % 60)
		minutes = sprintf("%.2d", (@seconds/60) % 60)
		hours = sprintf("%.2d", (@seconds/60/60))
		
		"#{hours}:#{minutes}:#{seconds}"
	end
end