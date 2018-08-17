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

# --- Arrays ---

array_1 = []
array_2 = Array.new
array_3 = [1, 2, 3, 5, 7, 11, 13]

puts array_1
puts array_3[4]

array_2[0] = 10

puts array_2[0]

array_4 = ["wordONE", "wordTWO", "wordTHREE"]

puts array_4
puts array_4[0]

array_5 = %w{one two three}

puts array_5

array_6 = %w[a b c]

puts array_6

# --- Hashes ---

hash_1 = { 'key_1' => 'value_1', 'key_2' => 'value_2', 'key_3' => 'value_3' }

puts hash_1['key_3']

hash_2 = Hash.new(0)

puts hash_2['key_1']
puts hash_2['key_2']

# --- Control Structures ---

tester = -7 

if tester > 0
	puts 'tester is bigger than 0'
elsif tester < 10
	puts 'tester is lower than 10'
else
	puts 'else'
end

while tester > 0
	tester = tester - 1
end
puts 'Loop Finished' 

# --- Statement Modifier ---

tester_2 = 7

puts ' if - statement modifier' if tester_2 > 0

tester_2 = tester_2 * tester_2 while tester_2 < 1000

puts " while - statement modifier: #{tester_2} " 
