#!/usr/bin/ruby

def method1(max)
	i, i2 = 0, 0
	while i <= max
		yield i, i2
		i += 1
	end
end

method1(10) { |n, m| print n, m } 

array = [ 1, 2, 3, 4, 5, 6, 7 ]

puts "Array Find: "
puts array.find { |n| n == 3 }

puts "\nArray Each: "
array.each { |n| puts n }

puts "\nArray Collect: "
array2 = array.collect { |n| n += n }
puts array2

class Test
	def m1(*values)
		yield values	
	end
end

t = Test.new
t.m1(1, 2, 3) do |values|
	puts values 
end

class File
	def File.openAndProcess(*args)
		file = File.open(*args)
		yield file
		file.close
	end
end

f = File.openAndProcess('text.txt', 'r') do |f1|
	print while f1.gets
end

class Tela < Button
	def initialize(label, &action)
		super(label)
		@action = action
	end

	def buttonPressed
		@action.call(self)
	end
end

class Som
	def ligar
		puts 'Ligando...'
	end

	def desligar
		puts 'Desligando...'
	end
end

som = Som.new

tela = Tela.new('Start') { som.ligar }
tela = Tela.new('Stop') { som.desligar }

