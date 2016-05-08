def reverser
	yield.split.reverse.join(" ").reverse
end

def adder(add_me=1)
	yield+add_me
end

def repeater num_times=1
	for i in 0...num_times
		yield
	end
end