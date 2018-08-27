#!/usr/bin/ruby

class Employee
	@@employee_number = 0;
	Salary = 2500

	def initialize(name, age)
		@name = name
		@age = age
		@@employee_number += 1
	end

	def to_s
		"\n Name: #{@name}\n Age: #{@age}\n Employee Number: #{@@employee_number}\n\n"	
	end

	def Employee.total_salary
		@@employee_number * Salary
	end

	public 
		def test_1
			'test_1'
		end

		def test_2
			'test_2'
		end

	protected
		def test_3
			'test_3'
		end

	private 
		def test_4
			'test_4'
		end
end

class Test
	def initialize
	end

	def test_1
		'test_1'
	end

	def test_2
		'test_2'
	end

	def test_3
		'test_3'
	end

	def test_4
		'test_4'
	end

	public :test_1, :test_2
	private :test_3
	protected :test_4
end

e1 = Employee.new('Employee One', 30)
e2 = Employee.new('Employee Two', 32)

puts e1.to_s
puts e2.to_s
puts Employee.total_salary
puts
puts e1.test_1
puts e1.test_2

t1 = Test.new
puts t1.test_1
puts t1.test_2
