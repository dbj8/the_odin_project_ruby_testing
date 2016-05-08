def measure sleep=1
	t_then = Time.now
	for i in 1..sleep
		yield
	end
	(Time.now - t_then) / sleep
end