def calculator
end

def add(first,second)
	first+second
end

def subtract(first,second)
	first-second
end

def sum(args)
	the_sum = 0
	args.each do |i|
		the_sum += i
	end
	the_sum
end

#def multiply(first,second)
#	first*second
#end

def multiply *args
	the_product = 1
	if args == nil
		return 0
	end
	args.each do |i|
		the_product *= i
	end
	the_product
end

def power(first,second)
	the_product = 1
	if first == 0 
		0
	elsif second == 0 
		1
	else
		while second > 0
			the_product *= first
			second -= 1
		end
		the_product
	end
end

def factorial num
	the_sum = 1
	while num > 1
		the_sum *= num
		num -= 1
	end
	the_sum
end