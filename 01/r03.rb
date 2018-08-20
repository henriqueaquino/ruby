#!/usr/bin/ruby

puts 'PUTS'

print 'PRINT'

printf " %2.4f   %s ", 345.77777, 'PRINTF' 

puts $_

value = gets

puts "#{value}"

while gets 
	if /sim|talvez/
		puts "SIM | TALVEZ"
	else
		break
	end	
end

class Aluno
	def initialize(name, note_one, note_two, note_three)
		@name = name
		@note_one = note_one
		@note_two = note_two
		@note_three = note_three
		@mean = ( note_one + note_two + note_three) / 3
	end

	def to_s
		"Name: #{@name}  Mean: #{@mean}"
	end
end

a1 = Aluno.new('Joao', 10, 8, 3)
puts a1.inspect

puts

puts a1.to_s
