#!/usr/bin/ruby

class Test
	attr_reader :name
	attr_writer :name

	public :name

	def presenting
		@name
	end
end

t1 = Test.new
t1.name = 'TEST'
puts t1.name

test1 = 'test1'
test2 = test1
test1[0] = 'T'
puts test1
puts test2

test3 = 'test3'
test4 = test3.dup
test3[0] = 'T'
puts test3
puts test4

test5 = 'test5'
test6 = test5 
test5.freeze
test7 = test5
puts test7
#test6[0] = 'T'

array1 = Array.new
array2 = ['one', 'two', 'three', 'four', 'five']
array3 = Array.new(5)

array1[0] = array2

array1[1] = array2[0,3]
array1[2] = array2[0...3]
array1[3] = array2[0..3]

puts "\n\n array1[2]\n"
puts array1[2]

puts"\n\n array1[3]\n"
puts array1[3]

puts "\n\n array1[1]\n"
puts array1[1]

puts "\n\n array1\n"
puts array1

puts "\n\n array1[0]\n"
puts array1[0]

puts array2[-1]
array3[2,4] = array2
puts array3
puts array3[2,4]
