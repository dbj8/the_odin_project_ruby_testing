class Temperature
	
	def initialize options
		@celsius_degrees = options[:c] || (options[:f] - 32) * 5.0 / 9.0
	end

	def in_fahrenheit
		(@celsius_degrees * 9.0 / 5.0) + 32
	end

	def in_celsius
		@celsius_degrees
	end

	def self.from_celsius celsius_degrees
		Temperature.new({:c => celsius_degrees})
	end

	def self.from_fahrenheit fahrenheit_degrees
		Temperature.new(f: fahrenheit_degrees)
	end
end

class Celsius < Temperature
	def initialize celsius_degrees
		super c: celsius_degrees
	end
end

class Fahrenheit < Temperature
	def initialize fahrenheit_degrees
		super f: fahrenheit_degrees
	end
end