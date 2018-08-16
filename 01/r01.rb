#!/usr/bin/ruby

puts "Hello World!"

def action_1(value)
	result = 'Your value: ' + value
	return result
end

def action_2(value)
	result = "Your value: #{value}"
	return result
end

def action_3(value)
	result = "Your value: #{value}"
end

puts action_1("ACTION 1")
puts action_2("ACTION 2")
puts (action_3("ACTION 3"))
puts action_3 "ACTION 3.1"
